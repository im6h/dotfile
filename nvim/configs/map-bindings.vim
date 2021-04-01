"" Keymap bindings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h
map q :q<CR>
map <C-s> :w <CR>


"tabe: create new tab, tabn:next tab, tabp: previous tab
map <leader>2 :tabn<CR>
map <leader>e :tabe %<CR>
map <leader>1 :tabp<CR>

nnoremap <C-a> ggVG
nnoremap <C-p> :FZF<CR>
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent>gb :BufferLinePick<CR>
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

"tabe: create new tab, tabn:next tab, tabp: previous tab
map <leader>w <Plug>(easymotion-bd-w)
map <leader>b :FloatermToggle<CR>

imap jj <Esc>
nnoremap <C-a> ggVG
nnoremap <C-p> :FZF<CR>

"" map plugin
map <leader>t :CocCommand explorer<CR>
nmap <silent> gd :vsp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
