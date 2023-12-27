return { -- Autocompletion
  'hrsh7th/nvim-cmp',
  event = 'VeryLazy',
  dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  config = function()
    -- nvim-cmp setup
    require 'plugin.config.cmp'
  end,
}
