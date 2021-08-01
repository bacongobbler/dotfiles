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

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" the best theme. Ever.
Plug 'morhetz/gruvbox'
" transparent backgrounds for color schemes that don't support it
Plug 'tribela/vim-transparent'

" LSP config
Plug 'neovim/nvim-lspconfig'

call plug#end()

set background=dark
colorscheme gruvbox

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

" ---------- LANGUAGE SERVERS ----------

lua << EOF
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/local/omnisharp/run"
require'lspconfig'.omnisharp.setup {
	cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
EOF
