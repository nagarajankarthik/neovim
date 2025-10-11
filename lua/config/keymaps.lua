
-- Keymaps for fzf
vim.keymap.set("n", "<C-f>", ":Files<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<C-p>", ":Rg<CR>", {noremap = true, silent = true})

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
vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>', { desc = 'Clear search highlight' })


