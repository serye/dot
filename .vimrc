set completeopt+=preview

nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-H> <C-W><C-H>


set number
set tabstop=4

set nocompatible         


colorscheme monokai 

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

Plugin 'ekalinin/Dockerfile.im'

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

Plugin 'vim-scripts/highlight.vim'

Plugin 'justinmk/vim-syntax-extra'
Plugin 'tommcdo/vim-exchange'


call vundle#end()            
filetype plugin indent on   


"colorscheme blink 
"colorscheme solarized 


let g:clang_library_path="/usr/lib/llvm-3.6/lib"

imap <C-\> <Plug>snipMateNextOrTrigger
smap <C-\> <Plug>snipMateNextOrTrigge



nnoremap <F2> :NERDTree
nnoremap <F3> :AirlineToggle
nnoremap <F5> :TagbarToggle



vnoremap <C-Y> "+y
vnoremap // y/<C-R>"<CR>:set hlsearch<ENTER>:hi Search ctermbg=57<ENTER>

vnoremap <F9> :set hlsearch!  
nnoremap <F9> :set hlsearch!<ENTER>

set t_Co=256

set guifont=Liberation_Mono_for_Powerline:h10 

set guifont=Liberation\ Mono\ for\ Powerline\ 10 

let g:airline_powerline_fonts = 1

let g:Powerline_symbols = 'fancy'

"autocmd BufEnter *.h colorscheme Tomorrow-Night
"
au BufNewFile,BufRead *.patch set filetype=patch

let g:airline#extensions#tabline#enabled = 1

function! GotoFileWithLineNum()
    " filename under the cursor
    let file_name = expand('<cfile>')
    if !strlen(file_name)
        echo 'NO FILE UNDER CURSOR'
        return
    endif

    " look for a line number separated by a :
    if search('\%#\f*:\zs[0-9]\+')
        " change the 'iskeyword' option temporarily to pick up just numbers
        let temp = &iskeyword
        set iskeyword=48-57
        let line_number = expand('<cword>')
        exe 'set iskeyword=' . temp
    endif

    " edit the file
    exe 'e '.file_name

    " if there is a line number, go to it
    if exists('line_number')
        exe line_number
    endif
endfunction

map gf :call GotoFileWithLineNum()<CR>
map gsf :sp<CR>:call GotoFileWithLineNum()<CR> 
