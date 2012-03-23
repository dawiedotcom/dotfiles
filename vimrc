"
"	VIM rc	 
"	David de Klerk
"	https://github.com/dawiedotcom/dotfiles/blob/master/vimrc
"


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
set winwidth=100					" Set the minimum window width.
set cursorline

" Set the satutus line
set statusline=%t\ [%Y%M]%=LINE:%l/%L

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Cammands
nmap W w                         " Write on :W


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
" Increment/decrement on + and -
nnoremap +  <C-a>
nnoremap -  <C-x>
" Easy spit navigation
map <C-h>	<C-w>h
map <C-l>	<C-w>l
map <C-j>	<C-w>j
map <C-k>	<C-w>k
" General hacks
" Reselect a visual block after indent.	
" 	http://vimbits.com/bits/20
"vnoremap < 	<gv
"vnoremap > 	>gv


" Map omnicomplete to <C-space> 
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>


map <C-F6> :run ctags -R --c#-kinds=cimnp --fields=+ianmzS --extra=+fq .<CR>

" automatically reload vimrc when it's saved
" 	http://vimbits.com/bits/128
" 	https://gist.github.com/1988620
"au BufWritePost .vimrc so ~/.vimrc
augroup AutoReloadVimRC
  au!
  " automatically reload vimrc when it's saved
  au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

