" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'sheerun/vim-polyglot'
    "Plug 'jiangmiao/auto-pairs'
	Plug 'jremmen/vim-ripgrep'
   
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-utils/vim-man'
"	Plug 'lyuts/vim-rtags'
	Plug 'kien/ctrlp.vim'
	Plug 'preservim/nerdtree'
"	Plug 'ycm-core/YouCompleteMe'
	Plug 'airblade/vim-rooter'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}



    Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim' 
call plug#end()
