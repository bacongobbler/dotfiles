local Plug = vim.fn['plug#']

vim.call('plug#begin', vim.fn.stdpath('data') .. '/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install()'] })
Plug 'junegunn/fzf.vim'
Plug 'hrsh7th/vim-vsnip'

Plug 'tpope/vim-fugitive'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'

-- Required by nvim-cmp
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

vim.call('plug#end')
