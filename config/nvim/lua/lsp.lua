local lspconfig = require'lspconfig'

-- Lua
lspconfig.lua_ls.setup{
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
vim.lsp.enable('lua_ls')

lspconfig.gopls.setup {}
vim.lsp.enable('gopls')

lspconfig.rust_analyzer.setup {}
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('terraformls')
vim.lsp.enable('tailwindcss')
vim.lsp.enable('bashls')
vim.lsp.enable('dockerls')
vim.lsp.enable('gh_actions_ls')

lspconfig.omnisharp.setup {
	cmd = { '/usr/local/omnisharp/OmniSharp' }
}
vim.lsp.enable('omnisharp')
vim.lsp.enable('protols')
vim.lsp.enable('ruby_lsp')
vim.lsp.enable('wasm_language_tools')
vim.lsp.enable('yamlls')
vim.lsp.enable('jsonls')

-- enable diagnostic help text
vim.diagnostic.config({ virtual_text = true })

-- key bindings
-- See `:h vim.lsp.*` for docs on any of the below functions
vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', 'gd', function() vim.lsp.buf.declaration() end)
vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end)
vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end)
vim.keymap.set('n', '<leader>D', function() vim.lsp.buf.type_definition() end)
vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end)
vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end)
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end)
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end)
