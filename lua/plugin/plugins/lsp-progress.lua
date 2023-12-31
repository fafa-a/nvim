return {
  'linrongbin16/lsp-progress.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lsp-progress').setup()
    -- listen lsp-progress event and refresh lualine
    vim.api.nvim_create_augroup('lualine_augroup', { clear = true })
    vim.api.nvim_create_autocmd('User', {
      group = 'lualine_augroup',
      pattern = 'LspProgressStatusUpdated',
      callback = require('lualine').refresh,
    })
  end,
}