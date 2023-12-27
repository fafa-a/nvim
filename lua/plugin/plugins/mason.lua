return {
  'williamboman/mason.nvim',
  event = 'VeryLazy',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    'folke/neodev.nvim',
  },
  config = function()
     require("plugin.mason")
  end,
}
