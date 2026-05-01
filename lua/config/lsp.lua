vim.lsp.config['luals'] = {
       -- Command and arguments to start the server.
       cmd = { 'lua-language-server' },
       -- Filetypes to automatically attach to.
       filetypes = { 'lua' },
       -- Sets the "workspace" to the directory where any of these files is found.
       -- Files that share a root directory will reuse the LSP server connection.
       -- Nested lists indicate equal priority, see |vim.lsp.Config|.
       root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
       -- Specific settings to send to the server. The schema is server-defined.
       -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
       settings = {
         Lua = {
           runtime = {
             version = 'LuaJIT',
           }
         }
       }
     }


vim.lsp.config["clangd"] = {
        cmd = { 'clangd', '--fallback-style=webkit' },
        root_markers = { 'compile_commands.json', '.clang-format' },
        filetypes = { 'h', 'c', 'cpp' },
}

vim.lsp.config["pyright"] = {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyrightconfig.json", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt", ".git" },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            },
        },
    },
}

vim.lsp.config["ruff"] = {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "ruff.toml", ".git" },
    init_options = {
        settings = {
            -- Any extra CLI arguments for ruff go here
            args = {},
        }
    }
}

vim.lsp.config("*", {
        capabilities = vim.lsp.protocol.make_client_capabilities()
})
