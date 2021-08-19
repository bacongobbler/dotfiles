-- nvim_lsp object
local nvim_lsp = require'lspconfig'

-- omnisharp
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/local/omnisharp/run"
nvim_lsp.omnisharp.setup {
	cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}

-- rust-analyzer
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })
