return { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = {
                left = '',
                right = ''
            },
            section_separators = {
                left = '',
                right = ''
            },
            disabled_filetypes = {
                statusline = {},
                winbar = {}
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch'},
            lualine_c = {'filename'},
            lualine_x = {'diff', ''},
            lualine_y = {{
                'datetime',
                -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
                style = '%d/%m %H:%M'
            }},
            lualine_z = {'location'}
        }
    }
}
