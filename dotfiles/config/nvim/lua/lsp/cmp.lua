vim.o.completeopt = "menuone,noselect"

local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	mapping = {
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<S-Tab>'] = cmp.mapping.scroll_docs(4),
		['<CR>'] = cmp.mapping.confirm(),
	},
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lua' },
		{ name = 'vsnip' },
		{ name = 'spell' },
		{ name = 'buffer' },
	}
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

