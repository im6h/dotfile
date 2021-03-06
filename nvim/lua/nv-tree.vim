lua << EOF
EOF
" require'nvim-tree'.setup {
"   disable_netrw       = true,
"   hijack_netrw        = true,
"   open_on_setup       = false,
"   ignore_ft_on_setup  = {},
"   auto_close          = false,
"   open_on_tab         = false,
"   hijack_cursor       = false,
"   update_cwd          = false,
"   update_to_buf_dir   = {
"     enable = true,
"     auto_open = true,
"   },
"   diagnostics = {
"     enable = false,
"     icons = {
"       hint = "",
"       info = "",
"       warning = "",
"       error = "",
"     }
"   },
"   update_focused_file = {
"     enable      = false,
"     update_cwd  = false,
"     ignore_list = {}
"   },
"   system_open = {
"     cmd  = nil,
"     args = {}
"   },
"   filters = {
"     dotfiles = false,
"     custom = {}
"   },
"   view = {
"     width = 30,
"     height = 30,
"     hide_root_folder = false,
"     side = 'left',
"     auto_resize = false,
"     mappings = {
"       custom_only = false,
"       list = {}
"     }
"   }
" }

"let g:nvim_tree_side = 'left' "left by default
"let g:nvim_tree_width = 40 "30 by default, can be width_in_columns or 'width_in_percent%'
"let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
"let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
"let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
"let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
"let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
"let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
"let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
"let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
"let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
"let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
"let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
"let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
"let g:nvim_tree_window_picker_exclude = {
"    \   'filetype': [
"    \     'notify',
"    \     'packer',
"    \     'qf'
"    \   ],
"    \   'buftype': [
"    \     'terminal'
"    \   ]
"    \ }
"" Dictionary of buffer option names mapped to a list of option values that
"" indicates to the window picker that the buffer's window should not be
"" selectable.
"let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
"let g:nvim_tree_show_icons = {
"    \ 'git': 1,
"    \ 'folders': 1,
"    \ 'files': 1,
"    \ 'folder_arrows': 1,
"    \ }
""If 0, do not show the icons for one of 'git' 'folder' and 'files'
""1 by default, notice that if 'files' is 1, it will only display
""if nvim-web-devicons is installed and on your runtimepath.
""if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
""but this will not work when you set indent_markers (because of UI conflict)

"" default will show icon by default if no icon is provided
"" default shows no icon by default
"let g:nvim_tree_icons = {
"    \ 'default': '',
"    \ 'symlink': '',
"    \ 'git': {
"    \   'unstaged': "✗",
"    \   'staged': "✓",
"    \   'unmerged': "",
"    \   'renamed': "➜",
"    \   'untracked': "★",
"    \   'deleted': "",
"    \   'ignored': "◌"
"    \   },
"    \ 'folder': {
"    \   'arrow_open': "",
"    \   'arrow_closed': "",
"    \   'default': "",
"    \   'open': "",
"    \   'empty': "",
"    \   'empty_open': "",
"    \   'symlink': "",
"    \   'symlink_open': "",
"    \   },
"    \   'lsp': {
"    \     'hint': "",
"    \     'info': "",
"    \     'warning': "",
"    \     'error': "",
"    \   }
"    \ }


"" a list of groups can be found at `:help nvim_tree_highlight`
"highlight NvimTreeFolderIcon guibg=blue

