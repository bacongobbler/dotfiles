" ---------- SETTINGS  ----------

syntax enable
colorscheme zenburn

set smartindent
set exrc
set guicursor=
set relativenumber
set nu
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set cmdheight=2

" ---------- KEYMAPS ----------

let mapleader=" "

nnoremap <leader>n :Explore<CR>

" ---------- PLUGINS ----------

" fire up vim-plug
call plug#begin(stdpath('data').'/plugged')

" easy code alignment tool
Plug 'junegunn/vim-easy-align'

" show git changes in the gutter
Plug 'airblade/vim-gitgutter'

" it's ack, for vim.
Plug 'mileszs/ack.vim'

call plug#end()

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

