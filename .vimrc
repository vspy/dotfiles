set background=dark
syntax on
colorscheme grb256

let mapleader = ","
set expandtab
set tabstop=2

au BufRead,BufNewFile *.py set tabstop=4

set wildignore+=*.pyc
set wildignore+=*.class
set wildignore+=CACHE
set wildignore+=**/node_modules/**

map <Leader><Leader> :!~/.vim/tests.sh '%:p'<CR>
