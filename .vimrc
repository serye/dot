set completeopt+=preview

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set number
set tabstop=4

set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'

Plugin 'vim-scripts/Conque-GDB'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'scrooloose/nerdtree'

Plugin 'flazz/vim-colorschemes'

Plugin 'wting/rust.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/YankRing.vim'

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
Plugin 'kien/ctrlp.vim'


Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'scrooloose/nerdcommenter'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'justinmk/vim-syntax-extra'
Plugin 'tommcdo/vim-exchange'

call vundle#end()            
filetype plugin indent on   


"colorscheme blink 
"colorscheme solarized 
colorscheme Monokai 


let g:clang_library_path="/usr/lib/llvm-3.6/lib"

imap <C-\> <Plug>snipMateNextOrTrigger
smap <C-\> <Plug>snipMateNextOrTrigge



nnoremap <F2> :NERDTree
nnoremap <F3> :AirlineToggle
nnoremap <F5> :TagbarToggle


vnoremap <C-Y> "+y
vnoremap // y/<C-R>"<CR>

set t_Co=256

set guifont=Liberation_Mono_for_Powerline:h10 

set guifont=Liberation\ Mono\ for\ Powerline\ 10 

let g:airline_powerline_fonts = 1

let g:Powerline_symbols = 'fancy'

"autocmd BufEnter *.h colorscheme Tomorrow-Night
"
au BufNewFile,BufRead *.patch set filetype=patch

let g:airline#extensions#tabline#enabled = 1
