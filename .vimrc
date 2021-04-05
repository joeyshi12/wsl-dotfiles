" Plugins
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'Valloric/YouCompleteMe'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'vim-syntastic/syntastic'
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
colorscheme codedark
syntax on
autocmd BufWinEnter * NERDTreeMirror

" Indenting
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" YouCompleteMe
set previewpopup=height:10,width:60,highlight:PMenuSbar
set completeopt+=popup
set completepopup=height:15,width:60,border:off,highlight:PMenuSbar
set ph=15
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_quiet_messages = { "type": "style" }

" LaTeX (vimtex/utisnips/tex_conceal)
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_compiler_latexmk = {
            \ 'build_dir': 'build',
            \ }
let g:UltiSnipsExpandTrigger = "<nop>"
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" Mappings
map <C-\> :NERDTreeToggle<CR>
nnoremap td  :tabclose<CR>
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
