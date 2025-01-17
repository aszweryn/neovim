require("telescope").load_extension("harpoon")
require("telescope").load_extension("git_worktree")

require("telescope").setup {
  defaults = {
    hidden = true,
    path_display = { "smart" },
    sorting_strategy = "ascending",
    scroll_strategy = "cycle",
    layout_config = {
      prompt_position = "bottom",
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        hidden = true,
      }
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  },
}

-- Enable telescope fzf native, if installed
require("telescope").load_extension("fzf")

-- Fuzy finder in current buffer
vim.keymap.set("n", "<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find()
end, { desc = "[/] Fuzzily search in current buffer" })

-- All the keybindings
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sb", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>sS", require("telescope.builtin").git_status, { desc = "" })
vim.keymap.set("n", "<leader>sr", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
vim.keymap.set("n", "<leader>sR", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
vim.keymap.set("n", "<leader>sn", "<cmd>lua require('telescope').extensions.notify.notify()<CR>")
vim.keymap.set("n", "<leader>st", ":TodoTelescope<CR>")
vim.keymap.set("n", "<leader><tab>", "<cmd>lua require('telescope.builtin').commands()<CR>")
