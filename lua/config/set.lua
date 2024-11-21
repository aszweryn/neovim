local set = vim.opt

set.guicursor = ""
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- relative numeration of lines
set.nu = true
set.relativenumber = true

-- all tabs shenanigans
set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2

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

-- Autocommand group to ensure line numbers are always enabled
vim.api.nvim_create_augroup('LineNumberSettings', { clear = true })
vim.api.nvim_create_autocmd('BufEnter', {
  group = 'LineNumberSettings',
  pattern = '*',
  callback = function()
    vim.opt.number = true
    vim.opt.relativenumber = true
  end,
})
