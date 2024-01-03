return {
  'folke/noice.nvim',
  dependencies = { -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
  },
  event = 'VeryLazy',
  config = function()
    -- require('noice').setup {
    --   routes = {
    --     {
    --       filter = {
    --         event = 'msg_show',
    --         kind = '',
    --         find = 'written',
    --       },
    --       opts = { skip = true },
    --     },
    --   },
    -- }
    require 'plugin.config.noice'
  end,
}
