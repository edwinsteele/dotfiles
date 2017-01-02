" This assumes that we are using a version of vim that has lots of
"  options turned on. vim-minimal in RHEL isn't sufficient, use vim-enhanced

" Keyboard shortcut reminders...
"
" ctrl-w + arrow => move between panes, including tagbar panes
" :vs => split vertically
" :sv => split horizontally
"
" Set to 256 colour mode
set t_Co=256

" Vundle start
set nocompatible    				" vundle: be IMproved - required
filetype off					" vundle: required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle - this is required
" To bootstrap, do:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Bundle 'gmarik/Vundle.vim'

" markdown bundle
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" python folding
Plugin 'tmhedberg/SimpylFold'
" PEP8 friendly auto-indentation
Plugin 'vim-scripts/indentpython.vim'
" Auto-complete
Bundle 'Valloric/YouCompleteMe'
" Syntax check on each save
Plugin 'scrooloose/syntastic'
" PEP8 checking - check with F7
Plugin 'nvie/vim-flake8'
" Zenburn colour scheme
Plugin 'jnurmine/Zenburn'
" Airline... not powerline
Plugin 'bling/vim-airline'
" Tagbar
Plugin 'majutsushi/tagbar'
" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim. Based
" on the default htmlcomplete.vim.
Plugin 'othree/html5.vim'
" Terraform stuff
Plugin 'hashivim/vim-terraform'


call vundle#end()
filetype plugin indent on     			" vundle: required!
" Vundle end

" colorscheme zenburn

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" define BadWhitespace before using in a match
highlight BadWhitespace ctermfg=red ctermbg=red cterm=bold
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

autocmd BufRead,BufNewFile *.yml syntax on
autocmd BufRead,BufNewFile *.yml set syntax=yaml
autocmd BufRead,BufNewFile *.yml set nosmartindent
autocmd BufRead,BufNewFile *.yml set noautoindent
autocmd BufRead,BufNewFile *.yml set inde=""
autocmd BufRead,BufNewFile *.yml set expandtab

autocmd BufRead,BufNewFile *.sql set syntax=sql

set encoding=utf-8
" Close auto-complete window when I'm done with it
let g:ycm_autoclose_preview_window_after_completion=1
" Use particular python version, not just what's in the current venv
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python2.7'

" Goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set hlsearch
set ruler

" Show line numbers, with custom colouring
set nu
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

let python_highlight_all=1
syntax on

" Always show statusline, even without a split
set laststatus=2
" Tell Vim to use the system clipboard
set clipboard=unnamed

let uname=system("uname")
if uname =~ "Darwin"
	" Use the brew installed ctags, not the one shipped with OSX
	let g:tagbar_ctags_bin='/usr/local/bin/ctags'
else
	" Use the regular ctags
	let g:tagbar_ctags_bin='/usr/bin/ctags'
endif
" Make it easy to toggle the tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width=40
let g:tagbar_left=1
" Make it easy to paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

let g:syntastic_html_tidy_exec = '/usr/local/Cellar/tidy-html5/5.0.0/bin/tidy'

" troubleshooting ycmd
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
