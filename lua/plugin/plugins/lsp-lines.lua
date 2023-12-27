return {
  'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
  event = 'VeryLazy',
  config = function()
    require 'plugin.config.lsp-lines'
  end,
}
