" set clipboard=unnamedplus
" set number
" set shiftwidth=4
" set tabstop=4 softtabstop=4
" set expandtab
" set smartindent
set guicursor=
set nohlsearch
set noerrorbells
" set noswapfile
" set nobackup
" set undodir=~/.vim/undodir
" set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

source $HOME/.config/nvim/vim-plug/plugins.vim
"call plug#begin('~/.config/nvim/plugged')

" Theme
"Plug 'morhetz/gruvbox'
   
"call plug#end()

" set background=dark
colorscheme gruvbox
