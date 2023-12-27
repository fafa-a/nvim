return {
  'stevearc/conform.nvim',
  event = 'VeryLazy',
  config = function()
    require 'plugin.config.conform'
  end,
}
