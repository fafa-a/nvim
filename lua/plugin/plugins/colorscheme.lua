return {
  {
    'catppuccin/nvim',
    as = 'catpuccin',
    config = function()
      local catppuccin = require 'catppuccin'

      catppuccin.setup {
        flavour = 'latte',
        transparent_background = true,
      }
    end,
  },
  {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true,
        groups = {
          border = '',
          panel = '',
        },
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = 'storm', -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = 'day', -- The theme is used when the background is set to light
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = 'dark', -- style for sidebars, see below
          floats = 'dark', -- style for floating windows
        },
        sidebars = { 'qf', 'help' }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        on_highlights = function(highlights, colors) end,
      }
    end,
  },
  {
    'polirritmico/monokai-nightasty.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('monokai-nightasty').setup {
        dark_style_background = 'transparent', -- default, dark, transparent, #color
        light_style_background = 'transparent', -- default, dark, transparent, #color
        terminal_colors = true, -- Set the colors used when opening a `:terminal`
        color_headers = true, -- Enable header colors for each header level (h1, h2, etc.)
        hl_styles = {
          -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          -- Background styles for sidebars (panels) and floating windows:
          floats = 'transparent', -- default, dark, transparent
          sidebars = 'transparent', -- default, dark, transparent
        },
        sidebars = { 'qf', 'help' }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`

        hide_inactive_statusline = false, -- Hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = true, -- Lualine headers will be bold or regular.
        lualine_style = 'light', -- "dark", "lig"
        ---@param colors ColorScheme
        on_colors = function(colors)
          colors.border = colors.grey
          colors.comment = '#2d7e79'
        end,

        ---@param highlights Highlights
        ---@param colors ColorScheme
        on_highlights = function(highlights, colors)
          highlights.TelescopeNormal = { fg = colors.magenta, bg = colors.charcoal }
          highlights.WinSeparator = { fg = colors.grey }
        end,
      }
    end,
  },
  {
    'marko-cerovac/material.nvim',
    config = function()
      require('material').setup {
        contrast = {
          terminal = false, -- Enable contrast for the built-in terminal
          sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = true, -- Enable contrast for floating windows
          cursor_line = false, -- Enable darker background for the cursor line
          non_current_windows = false, -- Enable contrasted background for non-current windows
          filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
        },

        styles = { -- Give comments style such as bold, italic, underline etc.
          comments = { italic = true },
          strings = { --[[ bold = true ]]
          },
          keywords = { underline = true },
          functions = {
            bold = true, --[[undercurl = true]]
          },
          variables = { italic = true },
          operators = {},
          types = { bold = true },
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
          -- Available plugins:
          'dap',
          'dashboard',
          'gitsigns',
          'hop',
          'indent-blankline',
          'lspsaga',
          'mini',
          'neogit',
          'neorg',
          'nvim-cmp',
          'nvim-navic',
          'nvim-tree',
          'nvim-web-devicons',
          'sneak',
          'telescope',
          'trouble',
          'which-key',
        },

        disable = {
          colored_cursor = false, -- Disable the colored cursor
          borders = false, -- Disable borders between verticaly split windows
          background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
          term_colors = false, -- Prevent the theme from setting terminal colors
          eob_lines = false, -- Hide the end-of-buffer lines
        },

        high_visibility = {
          lighter = true, -- Enable higher contrast text for lighter style
          darker = false, -- Enable higher contrast text for darker style
        },

        lualine_style = 'default', -- Lualine style ( can be 'stealth' or 'default' )

        async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

        custom_colors = nil, -- If you want to override the default colors, set this to a function

        custom_highlights = {}, -- Overwrite highlights with your own
      }
    end,
  },
  {
    'Mofiqul/adwaita.nvim',
    lazy = false,
    priority = 1000,
  },
}
