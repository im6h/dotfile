call plug#begin('~/.config/nvim/bundle')
  Plug 'Yggdroot/indentLine'
  " Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'akinsho/nvim-bufferline.lua'
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'psliwka/vim-smoothie'
  Plug 'simeji/winresizer'
  Plug 'nvim-lua/completion-nvim'
  Plug 'folke/trouble.nvim'
  Plug 'mhartington/formatter.nvim'

  Plug 'projekt0n/github-nvim-theme'
	Plug 'navarasu/onedark.nvim'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'jacoborus/tender.vim'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'morhetz/gruvbox'
call plug#end()
