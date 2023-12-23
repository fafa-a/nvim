-- [[ Basic Keymaps ]]

local map = vim.keymap.set
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- format and save
map('n', '<C-s>', ':w<CR>', { silent = true })
map('i', '<C-s>', '<Esc>:w<CR>', { silent = true })

-- hanldes escape key & fixed copilot suggestion
map('i', '<C-c>', '<Esc>')

-- buffer navigation
--map('n', '<S-b>', ':bprev<CR>', { silent = true })
--map('n', '<S-n>', ':bnext<CR>', { silent = true })

--disable arrow keys
map('n', '<up>', '<nop>', { silent = true })
map('n', '<down>', '<nop>', { silent = true })
map('n', '<left>', '<nop>', { silent = true })
map('n', '<right>', '<nop>', { silent = true })

-- keymap for moving
map('n', '<C-j>', '<C-w>j', { silent = true })
map('n', '<C-k>', '<C-w>k', { silent = true })
map('n', '<C-l>', '<C-w>l', { silent = true })
map('n', '<C-h>', '<C-w>h', { silent = true })

-- indent in visual modes
map('v', '<', '<gv', { silent = true })
map('v', '>', '>gv', { silent = true })

-- moove selected text up and down
map('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })
map('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })
