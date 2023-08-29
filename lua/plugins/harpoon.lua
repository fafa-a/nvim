return {
    'nvim-lua/plenary.nvim',
    'ThePrimeagen/harpoon',
    config = function()
        local mark = require 'harpoon.mark'
        local ui = require 'harpoon.ui'
        local map = vim.keymap.set
        map('n', '<leader>aa', mark.add_file)
        map('n', '<C-n>', ui.toggle_quick_menu)

        map('n', '<C-;>', function()
            ui.nav_file(1)
        end)
        map('n', "<C-'>", function()
            ui.nav_file(2)
        end)
        map('n', '<S-3>', function()
            ui.nav_file(3)
        end)
        map('n', '<S-4>', function()
            ui.nav_file(4)
        end)
    end
}
