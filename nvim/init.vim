source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/airline.vim
"source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/nvim-tree.vim

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set incsearch
set hidden
set wildmenu
set relativenumber
set nohlsearch
set mouse+=a

highlight VertSplit cterm=NONE
set fillchars+=vert:\ 

highlight Pmenu ctermfg=white ctermbg=black
highlight PmenuSel ctermfg=white ctermbg=gray
highlight EndOfBuffer ctermfg=black ctermbg=black


map <C-f> :Files<CR>
map <C-q> :bnext<CR>
"set complete-=t
"set complete-=i

"autocmd VimEnter * COQnow 


" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.cpp lua vim.lsp.buf.formatting_sync(nil, 100)

luafile ~/.config/nvim/lua/compe-config.lua


"Alternative

"   let g:compe = {}
"   let g:compe.enabled = v:true
"   let g:compe.autocomplete = v:true
"   let g:compe.debug = v:false
"   let g:compe.min_length = 1
"   let g:compe.preselect = 'enable'
"   let g:compe.throttle_time = 80
"   let g:compe.source_timeout = 200
"   let g:compe.resolve_timeout = 800
"   let g:compe.incomplete_delay = 400
"   let g:compe.max_abbr_width = 100
"   let g:compe.max_kind_width = 100
"   let g:compe.max_menu_width = 100
"   let g:compe.documentation = v:false

"   let g:compe.source = {}
"   let g:compe.source.path = v:true
"   let g:compe.source.buffer = v:true
"   let g:compe.source.calc = v:true
"   let g:compe.source.nvim_lsp = v:true
"   let g:compe.source.nvim_lua = v:true
"   let g:compe.source.vsnip = v:true
"   let g:compe.source.ultisnips = v:true
"   let g:compe.source.luasnip = v:true
"   let g:compe.source.emoji = v:true

"   inoremap <silent><expr> <Tab>
"         \ pumvisible() ? "\<C-n>" :
"         \ <SID>check_back_space() ? "\<Tab>" :
"         \ coc#refresh()

lua require'lspconfig'.clangd.setup{}
lua require'lspconfig'.pyright.setup{}

lua require('diagOFF')
"start c++ lsp by pressing space then c
:nmap <silent> <space>l <Cmd> lua require'lspconfig'.clangd.setup{} <CR> && LspStart <CR>

:nmap <silent> <space>d :ToggleDiagOn <CR>
:nmap <silent> <space>o :ToggleDiagOff <CR>

":nmap <space>e <Cmd>CHADopen<CR>
:nmap <silent> <space>e :NvimTreeToggle <CR>

lua << EOF
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
EOF
