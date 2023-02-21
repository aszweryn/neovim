local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'gopls',
	'pyright',
	'clangd',
	'tsserver',
	'eslint',
})

lsp.nvim_workspace()

lsp.setup()

