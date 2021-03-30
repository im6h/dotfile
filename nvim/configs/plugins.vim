call plug#begin('~/.config/nvim/bundle')
	"" ui
	Plug 'ryanoasis/vim-devicons'
	Plug 'itchyny/lightline.vim'
	Plug 'simeji/winresizer'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'mhinz/vim-startify'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'chriskempson/base16-vim'
	Plug 'voldikss/vim-floaterm'
	Plug 'iberianpig/ranger-explorer.vim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'tyrannicaltoucan/vim-quantum'
	Plug 'joshdick/onedark.vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'Yggdroot/indentLine'

	"" format
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-commentary'
	Plug 'raimondi/delimitmate'
	Plug 'leafgarland/typescript-vim'

	"" search
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'

	"" tool
	Plug 'wakatime/vim-wakatime'
	Plug 'easymotion/vim-easymotion'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()
