-- Buffers
vim.keymap.set("n", "tk", ":blast<enter>")
vim.keymap.set("n", "tj", ":bfirst<enter>")
vim.keymap.set("n", "th", ":bprev<enter>")
vim.keymap.set("n", "tl", ":bnext<enter>")
vim.keymap.set("n", "td", ":bdelete<enter>")

-- Transparency
vim.keymap.set("n", "TT", ":TransparentToggle<CR>")

-- Remove highlighting
vim.keymap.set("n", "ss", ":noh<CR>")
vim.keymap.set('n', '<space><space>', "<cmd>set nohlsearch<CR>")

-- Listchars toggle
vim.keymap.set("n", "<leader>lc", "<cmd>set list!<CR>")

-- Splits
vim.keymap.set("n", "<leader>sV", "<cmd>split<CR>")
vim.keymap.set("n", "<leader>sv", "<cmd>vertical split<CR>")

-- Search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Quicker close split
vim.keymap.set("n", "<leader>qq", ":q<CR>",
  {silent = true, noremap = true}
)

-- Quick escape w/ jj in insert mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", {noremap=false})

-- Centering w/ C-D and C-U
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Noice
vim.keymap.set("n", "<leader>nn", ":Noice dismiss<CR>")
vim.keymap.set("n", "<leader>cn", ":lua require('notify').dismiss()<CR>")

-- Golang remap
vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>",
  {silent = true, noremap = true}
)

-- Create a nice code snippet
vim.keymap.set("v", "<leader>cs", "<cmd>CodeSnap<CR>")

-- Twilight
vim.keymap.set("n", "tw", ":Twilight<enter>")

