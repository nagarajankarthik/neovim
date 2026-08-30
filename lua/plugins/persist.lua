return {
    'folke/persistence.nvim',
    event = "BufReadPre",
    keys = {
        { "<leader>qs", "<cmd>lua require('persistence').load()<cr>", desc = "Restore Session" },
        { "<leader>qS", "<cmd>lua require('persistence').select()<cr>", desc = "Select Session" },
        { "<leader>ql", "<cmd>lua require('persistence').load({ last = true })<cr>", desc = "Restore Last Session" },
        { "<leader>qd", "<cmd>lua require('persistence').stop()<cr>", desc = "Don't Save Current Session" },
    },
    config = function()
        require("persistence").setup()
    end
}
