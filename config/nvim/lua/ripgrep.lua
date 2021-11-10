if vim.fn.executable('ripgrep') then
	vim.g.ackprg = 'rg --vimgrep --no-heading'
end
