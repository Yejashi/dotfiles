syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hidden
set scrolloff=8
set wildmenu
set path+=**
set wildignore+=**/node_modules/**
set relativenumber
set nohlsearch


highlight VertSplit cterm=NONE
set fillchars+=vert:\ 

set completeopt-=preview

highlight Pmenu ctermfg=white ctermbg=black
highlight PmenuSel ctermfg=white ctermbg=gray

set signcolumn=no



highlight VertSplit ctermbg=black

highlight StatusLine ctermbg=lightgrey ctermfg=black

highlight StatusLineNC ctermbg=lightgrey ctermfg=black
