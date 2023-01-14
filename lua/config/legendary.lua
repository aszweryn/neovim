require('legendary').setup({
	keymaps = {
		{ '<leader>ff', ':Telescope find_files', description = 'Find files' },
		{ '<leader>h', function() print('hello world!') end, description = 'Say hello' },
		{ '<leader>s', ':SomeCommand<CR>', description = 'Non-silent keymap', opts = { silent = false } },
		{
			'<leader>c',
			{ n = ':LinewiseCommentToggle<CR>', x = ":'<,'>BlockwiseCommentToggle<CR>" },
			description = 'Toggle comment'
		},
		{
			itemgroup = 'short ID',
			description = 'A submenu of items...',
			icon = '',
			keymaps = {
			},
		},
	},
	commands = {
		{ ':SayHello', function() print('hello world!') end, description = 'Say hello as a command' },
		{
			itemgroup = 'short ID',
			commands = {},
		},
	},
	funcs = {
		{ function() doSomeStuff() end, description = 'Do some stuff with a Lua function!' },
		{
			itemgroup = 'short ID',
			funcs = {},
		},
	},
	autocmds = {
		{ 'BufWritePre', vim.lsp.buf.format, description = 'Format on save' },
		{
			name = 'MyAugroup',
			clear = true,
		},
	},
})
