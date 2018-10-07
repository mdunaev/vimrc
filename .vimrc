set nocompatible " be iMproved, required
filetype off " required
:set expandtab
:set tabstop=2
:set shiftwidth=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
Plugin 'scrooloose/nerdtree'

Plugin 'nanotech/jellybeans.vim' 

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:NERDTreeWinPos = "left"
let g:NERDChristmasTree = 1

colorscheme jellybeans
syntax enable
set splitright
let g:airline_theme='simple'

map <C-n> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key = '<tab>'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd vimenter * NERDTree
