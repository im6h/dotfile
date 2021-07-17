lua << EOF
require("bufferline").setup{}
EOF

nnoremap <leader>]b :BufferLineCycleNext<CR>
nnoremap <leader>[b :BufferLineCyclePrev<CR>
