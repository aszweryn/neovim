-- Defined list of listchars
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:➙ "
vim.opt.listchars:append "trail:#"
vim.opt.listchars:append "lead:⋅"

require("ibl").setup {
indent = {
    smart_indent_cap = true,
  },
  scope = {
    enabled = false,
    show_start = true,
    show_end = false,
    injected_languages = false,
    highlight = { "Function", "Label" },
    priority = 500,
  }
}
