return {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
                options = {
                        theme = 'tokyonight',
                        component_separators = '|',
                        section_separators = '',
                },
                sections = {
                    lualine_c = {
                      {
                        'filename',
                        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
                      }
                    }
                },
        },
}
