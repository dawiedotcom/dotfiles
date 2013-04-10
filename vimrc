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
set ignorecase						" Set some nice matching wrg to case.
set smartcase
set wildmenu						" This is just awesome.
"set wildignore=*.meta
set wig=*.meta
set winwidth=100					" Set the minimum window width.
set laststatus=2					" Always show the status line
set encoding=utf-8					" Unicode
"set cursorline
set shell=/bin/sh					" The root of all eval
" Set the satutus line
set statusline=%t\ [%Y%M]\ %{fugitive#statusline()}%=LINE:%l/%L

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Cammands
" Write on :W
command W w    

" Leader maps
let mapleader = ","

" Switching between splits
map <Leader>p 	<C-w>w
" Switching between buffers
nnoremap <Leader>,     :BufExplorer<CR>
nnoremap <Leader>.     :tabn<CR>
nnoremap <Leader>'     :tabp<CR>
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

" vim-fugitive short cuts
map <Leader>gs	:Gstatus<CR>
map <Leader>gc  :Gcommit<CR>
command Gw		:Gwrite<CR>
" git-gutter short cuts
map <Leader>gt	:ToggleGitGutter<CR>
" CtrlP shortcut
map <Leader>e	:CtrlP<CR>

" Map omnicomplete to <C-space> 
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>


" map <C-F6> :run ctags -R --c#-kinds=cimnp --fields=+ianmzS --extra=+fq .<CR>
map <C-F6> :!/usr/bin/ctags -R --c\+\+-kinds=\+p --fields=\+iaS --extra=\+q .<CR>

" automatically reload vimrc when it's saved
" 	http://vimbits.com/bits/128
" 	https://gist.github.com/1988620
"au BufWritePost .vimrc so ~/.vimrc
augroup AutoReloadVimRC
au!
" automatically reload vimrc when it's saved
au BufWritePost $MYVIMRC source! $MYVIMRC
augroup END

" Use pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Vimwiki settings
let wiki = {}
let wiki.path = '~/Dropbox/vimwiki/text/'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let g:vimwiki_list = [wiki]

" Powerline
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_colorscheme = 'skwp'
"let g:Powerline_theme = 'skwp'
