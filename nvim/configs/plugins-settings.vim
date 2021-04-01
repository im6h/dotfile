" This is config for plugins
"" Closetag 
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.js,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.vue'
let g:closetag_filetypes = 'html,js,xhtml,phtml,jsx,tsx,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

"  Lightline 
" let g:lightline#bufferline#clickable=0
" let g:lightline#bfferline#shorten_path=0
" let g:lightline#bufferline#min_buffer_count=0

"" FZF configs
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let g:fzf_layout = { 'down': '40%' }
"" Startify 
let g:startify_custom_header = [
			\'  .__          ________.__         ' ,
			\'  |__| _____  /  _____/|  |__      ',
			\'  |  |/     \/   __  \ |  |  \     ',
			\'  |  |  Y Y  \  |__\  \|   Y  \    ',
			\'  |__|__|_|  /\_____  /|___|  /    ',
			\'         \/       \/      \/       ',
      \]
let g:startify_fortune_use_unicode = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_session_autoload = 1
let g:startify_lists = [
\ { 'type': 'files',     'header': ['   Files']    },
\ { 'type': 'sessions',  'header': ['   Sessions'] },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']},
\ ]

let g:floaterm_opener="edit"
let g:indent_guides_enable_on_vim_startup = 0
let g:tmux_navigator_save_on_switch = 2
let g:tmux_navigator_no_mappings = 1
let g:indentLine_color_term = 239
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:tablineclosebutton = 1

