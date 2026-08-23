return {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-web-devicons" },
    config = function()
        require("diffview").setup()
    end,
}
