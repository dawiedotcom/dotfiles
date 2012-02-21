
colorscheme slate


set nocompatible                    " Turn off compatibility mode.
set nowrap                          " Turn off line wrapping.
set ai                              " Turn on auto indentation.
set tabstop=4                       " Set tab size to 4.
set expandtab                       " 
set nu                              " Turn line nubering on.
set backspace=indent,eol,start      " Make backspace sane.
set hlsearch                        " Highlight search terms.

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Cammands
command W w                         " Write on :W


" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>


"command Run ! python %

"if !exists("autocommands_loaded")
"  let autocommands_loaded = 1
"  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python
"endif

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
