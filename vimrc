set nocompatible
set nobackup
set nowritebackup
set noswapfile

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'prettier/vim-prettier'

" All of your Plugins must be added before the following line
call vundle#end()

" General settings
set number
set background=dark
set scrolloff=5
set smartcase
set ruler
set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch!
"colorscheme evening
filetype off
syntax on
filetype plugin indent on

" NERDTree settings
autocmd vimenter * NERDTree
let g:NERDTreeWinSize=50

" vim-jsx settings
let g:jsx_ext_required=0

" Syntastic settings
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_debug=3
let g:syntastic_filetype_map = {'html.handlebars': 'handlebars'}

" Prettier settings
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.css,*.scss Prettier

" Tagbar settings
"autocmd VimEnter * nested :TagbarOpen
nmap <F8> :TagbarToggle<CR>

let g:mustache_abbreviations = 1
