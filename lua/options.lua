-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Enable break indent
vim.o.breakindent = true

-- Disable wrapping
vim.o.wrap = false

-- Save undo history
vim.o.undofile = true

-- Smart searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.cmd.colorscheme 'catppuccin'

--vim.cmd()
vim.opt.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Concealer for Neorg
vim.o.conceallevel=2

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fixes Notify opacity issues
vim.o.termguicolors = true
