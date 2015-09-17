set completeopt+=preview

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set number
set tabstop=4

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


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

Plugin 'derekwyatt/vim-fswitch'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'a.vim'

Plugin 'Rip-Rip/clang_complete'

Plugin 'tpope/vim-fugitive'

Plugin 'majutsushi/tagbar'

"Plugin 'vim-scripts/taglist.vim'

Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'justinmk/vim-syntax-extra'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme blink 

"set hidden

let g:clang_library_path="/usr/lib/llvm-3.4/lib"

imap <C-\> <Plug>snipMateNextOrTrigger
smap <C-\> <Plug>snipMateNextOrTrigge



nnoremap <F2> :NERDTree
nnoremap <F5> :TagbarToggle


vnoremap <C-Y> "+y
vnoremap // y/<C-R>"<CR>

"set statusline=[%n]\ %<%f\ %([%1*%M%*%R%Y]%)\ \ \ [%{Tlist_Get_Tagname_By_Line()}]\ %=%-19(\LINE\ [%l/%L]\ COL\ [%02c%03V]%)\ %P
