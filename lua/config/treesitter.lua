require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "yaml", "python", "go" },

	sync_install = false,
	auto_install = false,

	ignore_install = { "javascript" },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
