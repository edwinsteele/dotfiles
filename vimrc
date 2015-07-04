" This assumes that we are using a version of vim that has lots of
"  options turned on. vim-minimal in RHEL isn't sufficient, use vim-enhanced

" Vundle start
set nocompatible    				" vundle: be IMproved - required
filetype off					" vundle: required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/Vundle.vim'

" rst bundle
Bundle 'Rykka/riv.vim'

" markdown bundle
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on     			" vundle: required!
" Vundle end

autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set syntax=python
autocmd BufRead,BufNewFile *.py set smartindent
autocmd BufRead,BufNewFile *.py set cinwords=class,def,elif,else,except,finally,for,if,try,while
autocmd BufRead,BufNewFile *.py set tabstop=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4
autocmd BufRead,BufNewFile *.py set expandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

autocmd BufRead,BufNewFile *.yml syntax on
autocmd BufRead,BufNewFile *.yml set syntax=yaml
autocmd BufRead,BufNewFile *.yml set nosmartindent
autocmd BufRead,BufNewFile *.yml set noautoindent
autocmd BufRead,BufNewFile *.yml set inde=""
autocmd BufRead,BufNewFile *.yml set expandtab

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
