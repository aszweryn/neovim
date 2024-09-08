local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	-- Improved navigation w/ tmux
	{ 'alexghergh/nvim-tmux-navigation' },

	-- Syntax highlighting
	{ 'nvim-treesitter/nvim-treesitter' },--, build = ':TSUpdate' },

	-- File explorer
	{ 'kyazdani42/nvim-tree.lua',
		dependencies = {
			'kyazdani42/nvim-web-devicons',
		},
	},

	-- Ripgrep-based searching
	{
		'nvim-telescope/telescope.nvim',
		dependencies = 'nvim-lua/plenary.nvim'
	},

	-- LSP config
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	},

	-- Better integration with Helm
    {
        'towolf/vim-helm',
        ft = { 'helm' },
    },

	-- Git diff
	{
		'sindrets/diffview.nvim',
		dependencies = 'nvim-lua/plenary.nvim'
	},

	-- Autopairs
	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},

	-- Changes history undo tree
	'mbbill/undotree',

	-- Pretty status bar
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
	},

	-- Listchars, indentation helper
	'lukas-reineke/indent-blankline.nvim',

	-- Themes
	'catppuccin/nvim',
	'folke/tokyonight.nvim',
	'EdenEast/nightfox.nvim',
	'ellisonleao/gruvbox.nvim',
})
