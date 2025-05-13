local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Improved navigation w/ tmux
  { "alexghergh/nvim-tmux-navigation" },

  -- Navigating w/ marks
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Generating sleek code snippets
  {
    "mistricky/codesnap.nvim",
    build = "make",
  },

  -- All of git magic in nvim
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },

  -- Other git related plugins
  { "ThePrimeagen/git-worktree.nvim" },
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim" },

  -- VSCode-like pictograms
  { "onsails/lspkind.nvim" },

  -- Markdown integration
  {
    "MeanderingProgrammer/markdown.nvim",
    main = "render-markdown",
    opts = {},
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you use the mini.nvim suite
  },

  -- Markdown preview plugin
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- Text wrapping
  { "preservim/vim-pencil" },

  -- Obsidian integration
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

  },

  -- Distraction-free experience
  { "folke/zen-mode.nvim" },

  -- Save nvim session
  { "tpope/vim-obsession" },

  -- Nice icons
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
        require("nvim-web-devicons").setup { default = true }
    end,
  },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        vim.api.nvim_set_keymap("n", "nt", ":NvimTreeToggle<enter>", { noremap=false })
      })
    end,
  },

  -- Improved surrounding
  { "tpope/vim-surround" },

  -- Making nvim background transparent
  { "xiyaowong/nvim-transparent" },

  -- Goto definition, implementation, etc.
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup {
        width = 120;
        height = 15;
        border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"};
        default_mappings = true;
        debug = false;
        opacity = nil;
        resizing_mappings = false;
        post_open_hook = nil;
        references = {
          telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
        };
        focus_on_open = true;
        dismiss_on_move = false;
        force_close = true,
        bufhidden = "wipe",
        stack_floating_preview_windows = true,
        preview_window_title = { enable = true, position = "left" },
      }
    end
  },

  -- Easy way to see all warnings and errors
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  },

  -- Nicely print TODO's and NOTEs
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  },

  -- Notification pop-out
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_colour = "#000000",
        enabled = false,
      })
    end
  },

  -- Nice command pop-out
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        routes = {
          {
            filter = {
              event = "msg_show",
              any = {
                { find = "%d+L, %d+B" },
                { find = "; after #%d+" },
                { find = "; before #%d+" },
                { find = "%d fewer lines" },
                { find = "%d more lines" },
              },
            },
            opts = { skip = true },
          }
        },
      })
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  -- Improved Golang experience
  "ray-x/go.nvim",
  "ray-x/guihua.lua",

  -- Favourite theme
  { "catppuccin/nvim", as = "catppuccin" },

  -- Automatically pair quotes, brackets, etc
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function() require("nvim-autopairs").setup {} end
  },

  { -- LSP Configuration & Plugins
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",

      -- Useful status updates for LSP
      "j-hui/fidget.nvim",
    }
  },

   -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      -- nvim-cmp setup
      local cmp = require "cmp"
      local luasnip = require "luasnip"

      -- Load snippets from friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        view = {
          entries = "native"
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert {
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
          { name = "buffer" },
          { name = "neorg" },
        },
      })
    end
  },

  -- Highlight, edit, and navigate code
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      pcall(require("nvim-treesitter.install").update { with_sync = true })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    }
  },

  -- Nice statusline
  { "nvim-lualine/lualine.nvim" },

  -- Toggle for displaying whitespaces as characters
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- Comment out highlighted lines with "gc"
  {
    "numToStr/Comment.nvim",
    event = { "BufRead", "BufNewFile" },
    config = true
  },

  -- Detect tabstop and shiftwidth automatically
  { "tpope/vim-sleuth" },

  -- Fuzzy Finder (files, lsp, etc)
  { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
  { "nvim-telescope/telescope-symbols.nvim" },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable "make" == 1 },

  -- Listchars, indentation helper
  { "lukas-reineke/indent-blankline.nvim" },
})
