local utils = require('core.utils')
local lspUI = utils.requireAndTrack('lspUI')
local map = utils.map

map("n", "<leader>rn", "<cmd>LspUI rename<CR>")
map("n", "<leader>ca", "<cmd>LspUI code_action<CR>")
map("n", "gd", "<cmd>LspUI definition<CR>")
map("n", "K", "<cmd>LspUI hover<CR>")
map("n", "gD", "<cmd>LspUI declaration<CR>")
map("n", "gi", "<cmd>LspUI implementation<CR>")
map("n", "gr", "<cmd>LspUI reference<CR>")
map("n", "gk", "<cmd>LspUI diagnostic prev<CR>")
map("n", "gj", "<cmd>LspUI diagnostic next<CR>")
map("n", "gy", "<cmd>LspUI type_definition<CR>")
