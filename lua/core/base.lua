print('LOADING BASE.LUA')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- Set highlight on search
opt.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
opt.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard = 'unnamedplus'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300
vim.wo.signcolumn = 'yes'

opt.completeopt = {'menu', 'menuone', 'noselect'}

-- relative line numbers
opt.relativenumber = true

-- confirm before closing unsaved buffer
opt.confirm = true

-- search acting like modern browsers
opt.incsearch = true

-- space before end of 'viewport'
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.smoothscroll = true

-- height prompt command
opt.cmdheight = 0

-- window same width
opt.equalalways = true

-- set plit opening windows
opt.splitbelow = true
opt.splitright = true

opt.termguicolors = true
opt.background = 'light'
-- test indent linebreak
opt.breakindent = true
vim.opt.showbreak = string.rep(' ', 3) -- Make it so that long lines wrap smartly
opt.linebreak = true

vim.diagnostic.config {
    virtual_text = false
}

-- Set background blurry
-- vim.api.nvim_command([[
--      augroup ChangeBackgroudColour
--        autocmd colorscheme * :hi normal guibg=#0d1926b8
--      augroup END
-- ]])

-- Set colorscheme
opt.termguicolors = true
opt.background = 'light'


-- -- set back up and swap file directory
opt.swapfile = false
-- opt.backup = false
local home = os.getenv 'HOME'
local backupDir = home .. '/.nvim/tmp/'
vim.opt.directory = backupDir
opt.undofile = true
