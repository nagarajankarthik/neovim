
-- Keymaps for fzf
vim.keymap.set("n", "<C-f>", ":Files<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<C-p>", ":Rg<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>w", ":Rg<C-R><C-W><CR>", {noremap = true, silent = true})

-- Keymaps for Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", "<C-w>w", { noremap = true, silent = true })

-- Keymaps for buffer navigation
vim.keymap.set("n", "<leader>n", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>p", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gb", ":ls<CR>:buffer<Space>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ch', ':nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Keymaps for copying current buffer path
vim.keymap.set("n", "<leader>cf", function()
    local current_file = vim.fn.expand("%:.")
    if current_file == "" then
        print("No file in current buffer")
        return
    end
    vim.fn.setreg("+", current_file)
    vim.notify("Copied relative path: " .. current_file)
end, { desc = "Copy Relative Path" })

-- Copy absolute path
vim.keymap.set("n", "<leader>cF", function()
    local current_file = vim.fn.expand("%:p")
    if current_file == "" then
        print("No file in current buffer")
        return
    end
    vim.fn.setreg("+", current_file)
    vim.notify("Copied absolute path: " .. current_file)
end, { desc = "Copy Absolute Path" })

-- Copy file name only
vim.keymap.set("n", "<leader>cn", function()
    local current_file = vim.fn.expand("%:t")
    if current_file == "" then
        print("No file in current buffer")
        return
    end
    vim.fn.setreg("+", current_file)
    vim.notify("Copied file name: " .. current_file)
end, { desc = "Copy File Name" })
