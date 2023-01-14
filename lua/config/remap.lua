-----------------------GENERALS-----------------------------
-- Exit all without saving
vim.keymap.set("n", "<leader>qa", "<cmd>:qa!<CR>")

-- Ctrl-D and Ctrl-U with centering
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Navigate between splits
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")

-- Split keybindings
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>")
vim.keymap.set("n", "<leader>sv", "<cmd>vertical split<CR>")

-- Search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Listchars toggle
vim.keymap.set("n", "<leader>lc", "<cmd>set list!<CR>")

-- Copy to clipboard and nvim register independently
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
------------------------------------------------------------


------------------------TEXT EDITION------------------------
-- Move highlighted parts of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Hold J in place when moving line below to the current line
vim.keymap.set("n", "J", "mzJ`z")

-- Replace every occurence of current word
vim.keymap.set("n", "<leader>fo", function()
    vim.lsp.buf.format()
end)

-- Find and replace every occurence of the current word
vim.keymap.set("n", "<leader>fr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Paste over without buffer change
vim.keymap.set("n", "<leader>p", "\"_dP")
------------------------------------------------------------


----------------------PLUGIN RELATED------------------------
-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep hidden=true<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers hidden=true<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags hidden=true<cr>")

-- Packer
vim.keymap.set("n", "<leader>qq", "<cmd>PackerSync<CR>")

-- Nvim-tree
vim.keymap.set("n", "<leader>nf", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>")

-- Undotree
vim.keymap.set("n", "<leader>ud", "<cmd>UndotreeToggle<cr>")

-- Git diff view
vim.keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<cr>")
------------------------------------------------------------

