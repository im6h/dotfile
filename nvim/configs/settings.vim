"" basic setup
filetype plugin on
filetype plugin indent on
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
color base16-nord
highlight SpecialKey ctermfg=236
highlight NonText ctermfg=236
set clipboard^=unnamed,unnamedplus
let base16colorspace=256

hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

lua <<EOF
require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin"
    },
    highlights = {
        background = {
            guifg = comment_fg,
            guibg = "#282c34"
        },
        fill = {
            guifg = comment_fg,
            guibg = "#282c34"
        },
        buffer_selected = {
            guifg = normal_fg,
            guibg = "#3A3E44",
            gui = "bold"
        },
        separator_visible = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        separator_selected = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        separator = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        indicator_selected = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        modified_selected = {
            guifg = string_fg,
            guibg = "#3A3E44"
        }
    }
	}
require('statusline.lua')
require('web-devicons.lua')
require "colorizer".setup()
require('treesitter.lua')
EOF
" set norelativenumber
" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set norelativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set relativenumber
" :augroup END
