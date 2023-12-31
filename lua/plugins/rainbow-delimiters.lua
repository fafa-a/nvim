return{"HiPhish/rainbow-delimiters.nvim",
  config= function ()
   vim.g.rainbow_delimiters = {
    -- strategy = {
    --     [''] = rainbow_delimiters.strategy['global'],
    --     vim = rainbow_delimiters.strategy['local'],
    -- },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
 
  end
}
