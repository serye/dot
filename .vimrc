set completeopt+=preview

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set number



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'scrooloose/nerdtree'

Plugin 'flazz/vim-colorschemes'

Plugin 'wting/rust.vim'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'ekalinin/Dockerfile.vim'

Plugin 'phildawes/racer'

Plugin 'derekwyatt/vim-fswitch'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'a.vim'

Plugin 'Rip-Rip/clang_complete'

"Plugin ''
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme Monokai

set hidden
let g:racer_cmd = "/home/ser/.vim/bundle/racer/target/release/racer"
let $RUST_SRC_PATH="/home/ser/prog/rust/rust/src/"

imap <C-\> <Plug>snipMateNextOrTrigger
smap <C-\> <Plug>snipMateNextOrTrigger

let g:clang_library_path='/usr/lib/llvm-3.6/lib'





"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
