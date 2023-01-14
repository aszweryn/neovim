-- Defined list of listchars
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:➙ "
vim.opt.listchars:append "trail:⋅"
vim.opt.listchars:append "lead:⋅"

require("indent_blankline").setup {
	space_char_blankline = " ",
}
