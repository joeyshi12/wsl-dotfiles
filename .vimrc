" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tomasiser/vim-code-dark'
Plug 'joshdick/onedark.vim'
Plug 'bignimbus/pop-punk.vim'
call plug#end()

" General
set nocompatible
set noundofile
set belloff=all
set backspace=indent,eol,start
set encoding=utf-8
set pastetoggle=<F2>
set linebreak
set number
set synmaxcol=200
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow splitright
set ph=15
set signcolumn=yes
colorscheme codedark

" Syntastic
let g:syntastic_python_flake8_args = "--max-line-length=150"

" LaTeX (vimtex/snipmate)
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_general_viewer = '/mnt/c/Users/j/AppData/Local/SumatraPDF/SumatraPDF.exe'
let g:vimtex_compiler_latexmk = {
            \ 'build_dir': 'build',
            \ }

" Mappings
nnoremap gR :%s///gc<left><left><left>
map <C-j> :tabclose<CR>
map <C-k> :tabnew<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <F5>  :set spell!<CR>
map <C-\> :NERDTreeToggle<CR>
imap <C-\> <ESC>:NERDTreeToggle<CR>
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
