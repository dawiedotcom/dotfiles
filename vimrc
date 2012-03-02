" 
"	VIM rc
"	 
"	David de Klerk
"
"
colorscheme slate


set nocompatible                    " Turn off compatibility mode.
set nowrap                          " Turn off line wrapping.
set autoindent                      " Turn on auto indentation.
set tabstop=4                       " Set tab size to 4.
set shiftwidth=4
"set expandtab                       " Insert spaces instead of tabs.
set number                          " Turn line nubering on.
set backspace=indent,eol,start      " Make backspace sane.
set hlsearch                        " Highlight search terms.
set wildmenu						" This is just awesome.

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Cammands
command W w                         " Write on :W


" Leader maps
let mapleader = ","

map <Leader>p 	<C-w>w
map <Leader>a 	GA
map <Leader>o	GO
map <Leader>y	GY``kp
map <Leader>d	Gdd``kp
map <Leader>/	^i//<Esc>



" Buffers - explore/next/previous.
nnoremap <silent> <Leader>,     :BufExplorer<CR>
nnoremap <silent> <Leader>.     :bn<CR>
nnoremap <silent> <Leader>'     :bp<CR>


" General hacks
vnoremap < <gv						|" Reselect a visual block after indent.	
vnoremap > >gv


"command Run ! python %

"if !exists("autocommands_loaded")
"  let autocommands_loaded = 1
"  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python
"endif

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
