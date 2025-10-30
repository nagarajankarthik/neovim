return {
    "nvim-treesitter/nvim-treesitter",
    enabled = false,
        branch = "master",
        build = ":TSUpdate",
        event = "BufReadPre",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "cpp", "python",  "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "bash", "tmux" },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = false },
        })
        end
}
