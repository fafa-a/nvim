return { -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    -- git ui
    "kdheepak/lazygit.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    keys = {{
        "<leader>gg",
        "<CMD>LazyGit<CR>",
        desc = "Open LazyGit"
    }},
    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
        -- See `:help gitsigns.txt`
        signs = {
            add = {
                text = '+'
            },
            change = {
                text = '~'
            },
            delete = {
                text = '_'
            },
            topdelete = {
                text = '‾'
            },
            changedelete = {
                text = '~'
            }
        }
    }
}
