" This is config for plugins
"" Closetag 
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.js,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.vue'
let g:closetag_filetypes = 'html,js,xhtml,phtml,jsx,tsx,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

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

" float term
let g:floaterm_opener="edit"

let g:indentLine_first_char='|'
let g:indentLine_char='|'
let g:indent_blankline_char='|'
let g:indent_blankline_space_char=''

" tmux naviator
let g:tmux_navigator_save_on_switch = 2
let g:tmux_navigator_no_mappings = 1

" tab nine
let g:tablineclosebutton = 1

" auto import 
let g:import_sort_auto = 0

" markdown
let g:mkdp_auto_start = 0
let g:mkdp_browser = 'firefox'

