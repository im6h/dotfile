lua << EOF
require("bufferline").setup{}
EOF

nnoremap gt :BufferLineCycleNext<CR>
nnoremap gT :BufferLineCyclePrev<CR>
