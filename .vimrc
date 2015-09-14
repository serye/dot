set completeopt+=preview

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set number
set tabstop=4

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
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


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'


Plugin 'vim-scripts/taglist.vim'

Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

Plugin 'octol/vim-cpp-enhanced-highlight'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme blink 

"set hidden

let g:clang_library_path="/usr/lib/llvm-3.4/lib"

imap <C-\> <Plug>snipMateNextOrTrigger
smap <C-\> <Plug>snipMateNextOrTrigge


let Tlist_Use_Right_Window   = 1


" TagList options
let Tlist_Exit_OnlyWindow = 1 "if taglist window is the only window left, exit vim
let Tlist_Show_Menu = 1 "show Tags menu in gvim
let Tlist_Show_One_File = 1 "show tags of only one file
let Tlist_GainFocus_On_ToggleOpen = 1 "automatically switch to taglist window
let Tlist_Highlight_Tag_On_BufEnter = 1 "highlight current tag in taglist window
let Tlist_Process_File_Always = 1 "even without taglist window, create tags file, required for displaying tag in statusline
let Tlist_Use_Right_Window = 1 "display taglist window on the right
let Tlist_Display_Prototype = 1 "display full prototype instead of just function name
let Tlist_Close_On_Select = 0 
"let Tlist_Ctags_Cmd = /path/to/exuberant/ctags

nnoremap <F5> :TlistToggle
nnoremap <F6> :TlistShowPrototype

set statusline=[%n]\ %<%f\ %([%1*%M%*%R%Y]%)\ \ \ [%{Tlist_Get_Tagname_By_Line()}]\ %=%-19(\LINE\ [%l/%L]\ COL\ [%02c%03V]%)\ %P

let Tlist_WinWidth = 60 

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"


