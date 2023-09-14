return { {
    "catppuccin/nvim",
    as = "catpuccin",
    config = function()
        local catppuccin = require("catppuccin")

        catppuccin.setup({
            flavour = "latte",
            transparent_background = true
        })
    end,
}, {
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
        require("rose-pine").setup({
            disable_background = true,
            groups = {
                border = "",
                panel = "",
            },
        })
    end
}, { "frenzyexists/aquarium-vim" }, { "olimorris/onedarkpro.nvim" }, { "ramojus/mellifluous.nvim" }, {
    'maxmx03/fluoromachine.nvim',
    config = function()
        local fm = require 'fluoromachine'

        fm.setup {
            brightness = 0.05,
            -- glow = true,
            theme = 'fluoromachine'
        }
    end
}, {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
        -- your optional config goes here, see below.
    end
},
    { 'rmehri01/onenord.nvim' }, { 'Mofiqul/vscode.nvim' }, { 'nyoom-engineering/oxocarbon.nvim' },
    { 'humanoid-colors/vim-humanoid-colorscheme' }, { 'folke/tokyonight.nvim' },
    {
        "polirritmico/monokai-nightasty.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            require("monokai-nightasty").setup({
    dark_style_background = "transparent", -- default, dark, transparent, #color
    light_style_background = "transparent", -- default, dark, transparent, #color
    terminal_colors = true, -- Set the colors used when opening a `:terminal`
    color_headers = true, -- Enable header colors for each header level (h1, h2, etc.)
    hl_styles = {
        -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true  },
        functions = {},
        variables = {},
        -- Background styles for sidebars (panels) and floating windows:
        floats = "transparent", -- default, dark, transparent
        sidebars = "transparent", -- default, dark, transparent
    },
    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`

    hide_inactive_statusline = false, -- Hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = true, -- Lualine headers will be bold or regular.
    lualine_style = "light", -- "dark", "light" or "default" (Follows dark/light style)

    --- You can override specific color/highlights. Current values in `extras/palettes`

    ---@param colors ColorScheme
    on_colors = function(colors)
        colors.border = colors.grey
        colors.comment = "#2d7e79"
    end,

    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors)
        highlights.TelescopeNormal = { fg = colors.magenta, bg = colors.charcoal }
        highlights.WinSeparator = { fg = colors.grey }
    end,
})
        end
    } }
