let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let g:fzf_layout = { 'down': '40%' }
let g:floaterm_opener="edit"
let g:indentLine_char = '▏'
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-prettier', 'coc-explorer', 'coc-go', 'coc-css', 'coc-html', 'coc-yaml', 'coc-eslint', 'coc-sh', 'coc-sql', 'coc-tsserver', 'coc-vimlsp']

nmap <silent> gd :vsp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>t :CocCommand explorer<CR>

