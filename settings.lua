local set = vim.opt
set.guicursor = ""

-- relative numeration of lines
set.nu = true
set.relativenumber = true

-- all the tabs shenanigans
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
