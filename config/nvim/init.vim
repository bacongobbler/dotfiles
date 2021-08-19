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

call plug#begin(stdpath('data').'/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'hrsh7th/nvim-compe'

" LSP/Language-specific plugins
Plug 'neovim/nvim-lspconfig'
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

" ---------- LANGUAGE SERVERS ----------

lua << EOF

-- nvim_lsp object
local nvim_lsp = require'lspconfig'

-- omnisharp
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/local/omnisharp/run"
require'lspconfig'.omnisharp.setup {
	cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}

-- rust-analyzer
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })

EOF
