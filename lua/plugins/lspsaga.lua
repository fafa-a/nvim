return {
    'nvimdev/lspsaga.nvim',
    event = 'LspAttach',
    config = function()
        require('lspsaga').setup {
            ui = {
                border = 'rounded',
            },
            symbol_in_winbar = {
                enable = false
            },
            lightbulb = {
                enable = false
            },
            outline = {
                layout = 'float'
            }
        }
        local map = vim.keymap.set
        local opts = { noremap = true, silent = true }
        -- Code action
        map({ 'n', 'v' }, '<leader>ca', '<cmd>Lspsaga code_action<CR>')
        -- Rename all occureences of the hovered word for the entire file
        map('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
        -- Peek definition
        -- You can edit the file containing the definition in the floating window
        -- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
        -- It also supports tagstack
        -- Use <C-t> to jump back
        map('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)

        -- Go to definition
        map('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opts)
        -- Show line diagnostics
        -- You can pass argument ++unfocus to
        -- unfocus the show_line_diagnostics floating window
        map('n', '<leader>sl', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
        -- Show workspace diagnostics
        map('n', '<leader>sw', '<cmd>Lspsaga show_workspace_diagnostics<CR>', opts)
        -- Diagnostic jump with filters such as only jumping to an error
        map('n', '[E', function()
            require('lspsaga.diagnostic'):goto_prev { severity = vim.diagnostic.severity.ERROR }
        end)
        map('n', ']E', function()
            require('lspsaga.diagnostic'):goto_next { severity = vim.diagnostic.severity.ERROR }
        end)
        -- Hover Doc
        -- If there is no hover doc,
        -- there will be a notification stating that
        -- there is no information available.
        -- To disable it just use ":Lspsaga hover_doc ++quiet"
        -- Pressing the key twice will enter the hover window
        map('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
    end,
    dependencies = {
        { 'nvim-tree/nvim-web-devicons' }, -- Please make sure you install markdown and markdown_inline parser
        { 'nvim-treesitter/nvim-treesitter' } }
}
