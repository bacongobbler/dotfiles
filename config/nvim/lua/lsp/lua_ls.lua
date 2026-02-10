return {
    settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT'
			},
			diagnostics = {
				globals = {
					-- ensure the LSP knows about common globals
					'vim',
					'require'
				}
			},
			workspace = {
				-- ensure neovim runtime files are loaded
				library = vim.api.nvim_get_runtime_file("", true)
			}
		}
	}
}