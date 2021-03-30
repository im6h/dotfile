"" basic setup
filetype plugin on
filetype plugin indent on
syntax on
set completeopt=menuone,noinsert,noselect
set encoding=UTF-8
set scroll=9
set mouse=a
set incsearch
set hlsearch
set number 
set tabstop=2
set softtabstop=0
set shiftwidth=2
set splitbelow
set splitright
set autoread
set noswapfile
set autoindent
set nohlsearch
set cursorline
set nobackup
set nowritebackup
set nowrap
set pumheight=10
set t_Co=16
set t_ut=
set laststatus=2
set backupcopy=yes
set ignorecase
set hidden
set list
set listchars=eol:¬,tab:»·,trail:·
set termguicolors
set background=dark
set ffs=unix,dos,mac
syntax on
syntax enable
color base16-default-dark
" let g:quantum_italics=1
" let g:quantum_black=1
" colorscheme quantum
highlight SpecialKey ctermfg=236
highlight NonText ctermfg=236
set clipboard^=unnamed,unnamedplus

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
	indent = {
    enable = true
  }
}
EOF

" set relativenumber
" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END
