-- nvim_lsp object
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	vim.keymap.set('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
	vim.keymap.set('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
	vim.keymap.set('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
	vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	vim.keymap.set('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
	vim.keymap.set('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
	vim.keymap.set('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
	vim.keymap.set('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
	vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- C# (omnisharp)
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/local/omnisharp/run"
nvim_lsp.omnisharp.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) }
}

-- Rust (rust-analyzer)
nvim_lsp.rust_analyzer.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

-- Go (gopls)
nvim_lsp.gopls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

-- Lua (lua-language-server)
nvim_lsp.lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
