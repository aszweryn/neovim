--local lsp = require('lsp-zero')
--
--lsp.preset('recommended')
--
--lsp.ensure_installed({
--	'gopls',
--	'pyright',
--	'clangd',
--	'eslint',
--})
--
--lsp.nvim_workspace()
--
--lsp.setup()

require('lsp-zero')
require('lspconfig').intelephense.setup({})
