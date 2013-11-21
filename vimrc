
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" rst bundle
Bundle 'Rykka/riv.vim'

filetype plugin indent on     " required!

autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set syntax=python
autocmd BufRead,BufNewFile *.py set smartindent
autocmd BufRead,BufNewFile *.py set cinwords=class,def,elif,else,except,finally,for,if,try,while
autocmd BufRead,BufNewFile *.py set tabstop=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4
autocmd BufRead,BufNewFile *.py set expandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" Restructured Text
"au BufRead,BufNewFile *.rst set nowrap textwidth=78
"au BufRead,BufNewFile *.rst set syntax=rst

autocmd BufRead,BufNewFile *.sql set syntax=sql
"autocmd FileType  set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType recipe set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType js set tabstop=2|set shiftwidth=2|set expandtab
set background=dark
set hlsearch
map :let &background = ( &background == "dark"? "light" : "dark" )
"set nu
set ruler
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
syn on
