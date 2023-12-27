return { -- git ui
  'kdheepak/lazygit.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = { {
    '<leader>gg',
    '<CMD>LazyGit<CR>',
    desc = 'Open LazyGit',
  } },
}
