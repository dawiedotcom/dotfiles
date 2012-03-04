"
"	VIM rc	 
"	David de Klerk
"	https://github.com/dawiedotcom/dotfiles/blob/master/vimrc
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

" Switching between splits
map <Leader>p 	<C-w>w
" Switching between buffers
nnoremap <Leader>,     :BufExplorer<CR>
nnoremap <Leader>.     :bn<CR>
nnoremap <Leader>'     :bp<CR>
" Move to and change to insert mode
map <Leader>a 	GA
map <Leader>o	GO
" Copy/Move lines
map <Leader>y	GY``kp
map <Leader>d	Gdd``kp
" Insert C-like and python comment at the beginning of the line
" TODO	check the file type.
map <Leader>/	^i//<Esc>
map <Leader>3	^i#<Esc>


" General hacks
" Reselect a visual block after indent.	
vnoremap < 	<gv
vnoremap > 	>gv
" Increment/decrement on + and -
nnoremap +  <C-a>
nnoremap -  <C-x>

