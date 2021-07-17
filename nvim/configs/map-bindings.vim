"" Keymap bindings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h
map q :q<CR>
map <C-s> :w <CR>

nnoremap <C-a> ggVG
nnoremap <leader>ff <cmd>:FZF<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

imap jj <Esc>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
