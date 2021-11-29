filetype plugin on
filetype plugin indent on
set completeopt=menuone,noinsert,noselect
set encoding=UTF-8
set scroll=9
set mouse=a
set incsearch
set hlsearch
set number relativenumber
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
set laststatus=2
set backupcopy=yes
set ignorecase
set hidden
" set list
" set showbreak=↪\ 
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set background=dark
set ffs=unix,dos,mac
syntax on
syntax enable
highlight SpecialKey ctermfg=236
highlight NonText ctermfg=236
set clipboard^=unnamed,unnamedplus
colorscheme onedark 

hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

set t_Co=256
let &t_ut=''
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

