" Plugins
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'sirver/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'
call plug#end()

" General
set background=dark
colorscheme codedark
set number
set nocompatible
set noundofile
set belloff=all
set backspace=indent,eol,start
set encoding=utf-8
set pastetoggle=<F2>
syntax on
map <C-\> :NERDTreeToggle<CR>

" Indenting
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" LaTeX
autocmd filetype tex highlight MatchParen ctermbg=8
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
