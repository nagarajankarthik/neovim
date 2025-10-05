-- Editor settings
-- Indentation and tabs
vim.opt.tabstop = 4
vim.opt.fileformat = 'unix'
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- UTF-8 support
vim.opt.encoding = 'utf-8'

-- -- Set terminal type
vim.opt.shell = '/bin/bash'

-- Backspace
vim.opt.backspace = { 'indent', 'eol', 'start' }

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set split direction for new windows
vim.opt.splitbelow = true
vim.opt.splitright = true

-- AutoComplete
vim.opt.completeopt = { "menuone", "noselect", "popup" }

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Search highlight
vim.opt.hlsearch = false

-- Diagnostics
vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
})
