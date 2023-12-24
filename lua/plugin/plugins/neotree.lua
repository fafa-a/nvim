return {
  "nvim-neo-tree/neo-tree.nvim",
  version = '*',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("plugin.config.neo-tree")
  end
}
