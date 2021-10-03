" ---------- SETTINGS  ----------

syntax enable

set spell

set smartindent
set guicursor=
set relativenumber
set number
set hidden
set noerrorbells
" set nowrap
set noswapfile
set nobackup
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set cmdheight=2

" ---------- DICTIONARY ----------

:set dictionary?
:set dictionary+=(stdpath('data').'words')

" ---------- PLUGINS ----------

call plug#begin(stdpath('data').'/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'editorconfig/editorconfig-vim'

" mmm. gruvbox.
Plug 'morhetz/gruvbox'

" LSP/Language-specific plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'rust-lang/rust.vim'

call plug#end()

colorscheme gruvbox
set background=dark

" ---------- PLUGIN SETTINGS ----------

" vim-easy-alignment settings.
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap <leader>s :tab split<CR>:Ack ""<Left>
nmap <leader>S :tab split<CR>:Ack <C-r><C-w><CR>

" ---------- RIPGREP ----------

if executable('rg')
	" tell ack.vim to use ripgrep
	let g:ackprg = 'rg --vimgrep --no-heading'
endif

" ---------- EXTERNAL PLUGINS ----------

luafile ~/.config/nvim/lua/lsp/lsp-config.lua
luafile ~/.config/nvim/lua/lsp/compe.lua

" ---------- KEYMAPS ----------

let mapleader=" "

nnoremap <silent> <leader>n :Files<CR>
