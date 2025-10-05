
-- Autosave after 2 seconds
vim.opt.updatetime = 2000
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
        pattern = { "*" },
        command = "silent update"
})


-- Enable LSP Completion
vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(ev)
                local client = vim.lsp.get_client_by_id(ev.data.client_id)
                if client:supports_method('textDocument/completion') then
                        vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
                end
        end,
})
-- Enable autoformat
vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
        callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if client and client.server_capabilities.documentFormattingProvider then
                        vim.api.nvim_create_autocmd("InsertLeave", {
                                buffer = args.buf,
                                callback = function()
                                        vim.lsp.buf.format({ async = true })
                                end,
                        })
                end
        end,
})


-- Show diagnostics in command line
-- Function to echo diagnostics for the current line
function EchoLineDiagnostics()
        local line = vim.api.nvim_win_get_cursor(0)[1] - 1 -- 0-indexed
        local diagnostics = vim.diagnostic.get(0, { lnum = line })

        if vim.tbl_isempty(diagnostics) then
                -- Clear the command line if there are no diagnostics
                vim.api.nvim_echo({}, false, {})
                return
        end

        local messages = {}
        for _, diagnostic in ipairs(diagnostics) do
                local severity = ({
                        [vim.diagnostic.severity.ERROR] = "Error",
                        [vim.diagnostic.severity.WARN]  = "Warning",
                        [vim.diagnostic.severity.INFO]  = "Info",
                        [vim.diagnostic.severity.HINT]  = "Hint",
                })[diagnostic.severity] or "Unknown"

                table.insert(messages, string.format("[%s] %s", severity, diagnostic.message))
        end

        -- Echo all diagnostics for the current line
        vim.api.nvim_echo({ { table.concat(messages, " | "), "Normal" } }, false, {})
end

-- Create an augroup so it can be easily cleared/reloaded
local group = vim.api.nvim_create_augroup("LspDiagnosticsEcho", { clear = true })

vim.api.nvim_create_autocmd({ "CursorHold"}, {
        group = group,
        callback = function()
                EchoLineDiagnostics()
        end,
})
