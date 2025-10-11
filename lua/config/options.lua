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


vim.g.fzf_action = {
    ['ctrl-t'] = 'tab split',
    ['ctrl-x'] = 'split',
    ['ctrl-s'] = 'vsplit',
    ['ctrl-o'] = 'v:lua.fzf_copy_results',
}


vim.cmd([[
let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --line-range :300 {}'
\ --bind ctrl-y:preview-up,ctrl-e:preview-down,
\ctrl-b:preview-page-up,ctrl-f:preview-page-down,
\ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,
\shift-up:preview-top,shift-down:preview-bottom,
\alt-up:half-page-up,alt-down:half-page-down"
]])
