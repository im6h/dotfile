local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-j>", [[<C-W>j]], opt)
map("n", "<C-k>", [[<C-W>k]], opt)
map("n", "<C-h>", [[<C-W>h]], opt)
map("n", "<C-l>", [[<C-W>l]], opt)
map("n", "q", [[:q<CR>]], opt)
map("i", "jj", [[<ESC>]], opt)
map("n", "<C-a>", [[ggVG]], opt)
map("n", "<C-j>", [[:TmuxNavigateDown]], opt)
map("n", "<C-k>", [[:TmuxNavigateUp]], opt)
map("n", "<C-h>", [[:TmuxNavigateLeft]], opt)
map("n", "<C-l>", [[:TmuxNavigateRight]], opt)
map("s", "gd", [[:vsp<CR><Plug>(coc-definition)]], opt)
map("n", "<C-p>", [[:FZF<CR>]], opt)
map("n", "<leader>w", [[<Plug>(easymotion-bd-w)]], opt)
map("n", "<leader>t", [[:CocCommand explorer<CR>]], opt)  


