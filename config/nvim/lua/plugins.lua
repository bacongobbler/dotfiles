local Plug = vim.fn['plug#']

vim.call('plug#begin', vim.fn.stdpath('data')..'/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install()']})
Plug 'junegunn/fzf.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'editorconfig/editorconfig-vim'

-- mmm. gruvbox.
Plug 'morhetz/gruvbox'

-- LSP/Language-specific plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'rust-lang/rust.vim'

vim.call('plug#end')

vim.g.colors_name = 'gruvbox'
vim.opt.background = 'dark'
