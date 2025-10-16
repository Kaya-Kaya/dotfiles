return {
    opts = {
        sections = {
            lualine_c = {
                {
                    "filename",
                    file_status = true,
                    path = 1,
                },
            },
            lualine_x = {
                {
                    function()
                        local reg = vim.fn.reg_recording()
                        return ' Recording @' .. reg
                    end,
                    color = 'DiagnosticError',
                    cond = function()
                        return vim.fn.reg_recording() ~= ''
                    end,
                },
                "lsp_status",
                "filetype",
            },
        },
        tabline = {
            lualine_c = {
                {
                    "%=",
                    component_separators = { left = '' },
                },
                {
                    "harpoon2",
                    indicators = { " H ", " J ", " K ", " L " },
                    active_indicators = { "[H]", "[J]", "[K]", "[L]" },
                    _separator = " ",
                    icon = "",
                    color_active = { fg = "#c4a7e7" },
                }
            }
        }
    },
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
