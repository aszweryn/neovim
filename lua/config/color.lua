require("tokyonight").setup({
	style = "night",
	transparent = false,
	transparent_statusbar = false,
	terminal_colors = true,
	styles = {
		comments = "italic",
		keywords = "italic",
		functions = "NONE",
		variables = "NONE",
		sidebars = "transparent",
		floats = "transparent",
	},
	sidebars = { "qf", "help" },
	day_brightness = 0.3,
	hide_inactive_statusline = true,
	dim_inactive = false,
	lualine_bold = false,

	on_colors = function(colors) end,
	on_highlights = function(highlights, colors) end,
})


require('nightfox').setup({
	options = {
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled",
		transparent = false,
		terminal_colors = true,
		dim_inactive = false,
		styles = {
			comments = "NONE",
			conditionals = "NONE",
			constants = "NONE",
			functions = "NONE",
			keywords = "NONE",
			numbers = "NONE",
			operators = "NONE",
			strings = "NONE",
			types = "NONE",
			variables = "NONE",
		},
		inverse = {
			match_paren = false,
			visual = false,
			search = false,
		},
		modules = {},
	},
	palettes = {},
	specs = {},
	groups = {},
})

require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})

-- Colorscheme must be invoked after defining specific colorcheme configuration
vim.cmd("colorscheme tokyonight")
