return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local bf = require('bufferline')
        bf.setup({
            keys = {{
                '<leader>bp',
                '<Cmd>BufferLineTogglePin<CR>',
                desc = 'Toggle pin'
            }, {
                '<leader>bP',
                '<Cmd>BufferLineGroupClose ungrouped<CR>',
                desc = 'Delete non-pinned buffers'
            }, {
                '<S-h>',
                '<cmd>BufferLineCyclePrev<cr>',
                desc = 'Prev buffer'
            }, {
                '<S-l>',
                '<cmd>BufferLineCycleNext<cr>',
                desc = 'Next buffer'
            }},
            version = '*',
            opts = {
                options = {
                    -- stylua: ignore
                    close_command = function(n)
                        require("mini.bufremove").delete(n, false)
                    end,
                    -- stylua: ignore
                    right_mouse_command = function(n)
                        require("mini.bufremove").delete(n, false)
                    end,
                    diagnostics = 'nvim_lsp',
                    always_show_bufferline = true,
                    offsets = {{
                        filetype = 'neo-tree',
                        text = 'Neo-tree',
                        highlight = 'Directory',
                        text_align = 'left'
                    }}
                }
            }
        })
    end
}
