call plug#begin('~/.config/nvim/bundle')
  Plug 'Yggdroot/indentLine'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
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
  Plug 'psliwka/vim-smoothie'
  Plug 'simeji/winresizer'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'folke/trouble.nvim'
  Plug 'eddyekofo94/gruvbox-flat.nvim'
  Plug 'mhartington/formatter.nvim'
  Plug 'projekt0n/github-nvim-theme'
call plug#end()
