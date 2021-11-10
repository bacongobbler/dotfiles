vim.g.clipboard = {
	name = 'wsl-clip',
	copy = {
		['+'] = 'wsl-clip save',
		['*'] = 'wsl-clip save'
	},
	paste = {
		['+'] = 'wsl-clip load',
		['*'] = 'wsl-clip load'
	},
	cache_enabled = 0,
}
