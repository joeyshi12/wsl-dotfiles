" General
syntax on
filetype plugin indent on
set nocompatible
set noundofile
set belloff=all
set backspace=indent,eol,start
set encoding=utf-8
set linebreak
set number
set splitbelow splitright
set ph=15
set signcolumn=yes
set synmaxcol=200

" Formatting
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Mappings
cmap w!! w !sudo tee %
map <C-n> :tabn<CR>
map <C-p> :tabp<CR>
map <F5>  :set spell!<CR>
map <C-\> :NERDTreeToggle<CR>
imap <C-\> <ESC>:NERDTreeToggle<CR>
