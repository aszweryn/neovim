-- for ease of use
local set = vim.opt

set.guicursor = ""
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- relative numeration of lines
set.nu = true
set.relativenumber = true

-- default tab settings
set.expandtab = false
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4

-- nowrap, smart whitespaces
set.smartindent = true
set.wrap = false

-- for more visible lines
set.scrolloff = 8
set.signcolumn = 'yes'
set.isfname:append("@-@")

set.updatetime = 50

-- searching improvment, silly highligh removed
set.incsearch = true
set.hlsearch = false
set.smartcase = true
set.ignorecase = true

-- plugin-based backups, with extensive history
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
set.undofile = true

-- looks nice
set.termguicolors = true
set.laststatus = 3
vim.g.mapleader = " "

-- for specific spacing behaviour
vim.cmd[[
    augroup FileTypeTabs
        autocmd!
        autocmd FileType lua,yaml lua require('tabber').set_tab_options()
    augroup END
]]

