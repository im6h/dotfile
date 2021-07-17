call plug#begin('~/.config/nvim/bundle')
  Plug 'chriskempson/base16-vim'
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
  Plug 'ful1e5/onedark.nvim'
  Plug 'simeji/winresizer'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'folke/trouble.nvim'
call plug#end()
