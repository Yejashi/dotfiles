source $HOME/.config/nvim/vim-plug/plugins.vim


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

let g:ycm_show_diagnostics_ui = 0

highlight VertSplit ctermbg=black

highlight StatusLine ctermbg=lightgrey ctermfg=black

highlight StatusLineNC ctermbg=lightgrey ctermfg=black

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
map  <C-p> :FZF<CR>

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

