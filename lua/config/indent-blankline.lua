-- Defined list of listchars
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:➙ "
vim.opt.listchars:append "trail:⋅"
vim.opt.listchars:append "lead:⋅"

local highlight = {
    "CursorColumn",
    "Whitespace",
}
require("ibl").setup {
    indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}
