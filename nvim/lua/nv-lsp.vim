lua << EOF

EOF
"local nvim_lsp = require('lspconfig')
"local protocol = require'vim.lsp.protocol'
"local eslint = {
"  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
"  lintStdin = true,
"  lintFormats = {"%f:%l:%c: %m"},
"  lintIgnoreExitCode = true,
"  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
"  formatStdin = true
"}
"local function eslint_config_exists()
"  local eslintrc = vim.fn.glob(".eslintrc*", 0, 1)

"  if not vim.tbl_isempty(eslintrc) then
"    return true
"  end

"  if vim.fn.filereadable("package.json") then
"    if vim.fn.json_decode(vim.fn.readfile("package.json"))["eslintConfig"] then
"      return true
"    end
"  end

"  return false
"end


"local on_attach = function(client, bufnr)
"  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
"  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

"  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

"  local opts = { noremap=true, silent=true }

"  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
"  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
"  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
"  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
"  buf_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
"  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
"  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
"  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
"  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
"  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
"  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
"  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
"  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
"  buf_set_keymap('n', '<C-j>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
"  buf_set_keymap('n', '<S-C-j>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
"  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
"  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

"  -- formatting
"  if client.resolved_capabilities.document_formatting then
"	vim.api.nvim_command [[augroup Format]]
"	vim.api.nvim_command [[autocmd! * <buffer>]]
"	vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
"	vim.api.nvim_command [[augroup END]]
"  end

"  require'completion'.on_attach(client, bufnr)

"  --protocol.SymbolKind = { }
"  protocol.CompletionItemKind = {
"    '', -- Text
"    '', -- Method
"    '', -- Function
"    '', -- Constructor
"    '', -- Field
"    '', -- Variable
"    '', -- Class
"    'ﰮ', -- Interface
"    '', -- Module
"    '', -- Property
"    '', -- Unit
"    '', -- Value
"    '', -- Enum
"    '', -- Keyword
"    '﬌', -- Snippet
"    '', -- Color
"    '', -- File
"    '', -- Reference
"    '', -- Folder
"    '', -- EnumMember
"    '', -- Constant
"    '', -- Struct
"    '', -- Event
"    'ﬦ', -- Operator
"    '', -- TypeParameter
"  }
"end

"nvim_lsp.flow.setup {
"  on_attach = on_attach
"}

"nvim_lsp.tsserver.setup {
"  on_attach = on_attach,
"  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" }
"}

"nvim_lsp.pylsp.setup {
"  on_attach = on_attach,
"  filetypes = { "python" }
"}

"nvim_lsp.pyright.setup {
"  on_attach = on_attach,
"  filetypes = { "python" }
"}

"nvim_lsp.gopls.setup {
"  on_attach = on_attach,
"  filetypes = { "go", "gomod" },
"  cmd = {"gopls", "serve"},
"    settings = {
"      gopls = {
"        analyses = {
"          unusedparams = true,
"        },
"      staticcheck = true,
"    },
"  },
"}

"nvim_lsp.efm.setup {
"  on_attach = function(client)
"    client.resolved_capabilities.document_formatting = true
"    client.resolved_capabilities.goto_definition = false
"    set_lsp_config(client)
"  end,
"  root_dir = function()
"    if not eslint_config_exists() then
"      return nil
"    end
"    return vim.fn.getcwd()
"  end,
"  settings = {
"    languages = {
"      javascript = {eslint},
"      javascriptreact = {eslint},
"      ["javascript.jsx"] = {eslint},
"      typescript = {eslint},
"      ["typescript.tsx"] = {eslint},
"      typescriptreact = {eslint}
"    }
"  },
"  filetypes = {
"    "javascript",
"    "javascriptreact",
"    "javascript.jsx",
"    "typescript",
"    "typescript.tsx",
"    "typescriptreact"
"  },
"}

"nvim_lsp.diagnosticls.setup {
"  on_attach = on_attach,
"  filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown', 'pandoc' },
"  init_options = {
"    linters = {
"      eslint = {
"        command = 'eslint_d',
"        rootPatterns = { '.git' },
"        debounce = 100,
"        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
"        sourceName = 'eslint_d',
"        parseJson = {
"          errorsRoot = '[0].messages',
"          line = 'line',
"          column = 'column',
"          endLine = 'endLine',
"          endColumn = 'endColumn',
"          message = '[eslint] ${message} [${ruleId}]',
"          security = 'severity'
"        },
"        securities = {
"          [2] = 'error',
"          [1] = 'warning'
"        }
"      },
"    },
"    filetypes = {
"      javascript = 'eslint',
"      javascriptreact = 'eslint',
"      typescript = 'eslint',
"      typescriptreact = 'eslint',
"    },
"    formatters = {
"      eslint_d = {
"        command = 'eslint_d',
"        args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
"        rootPatterns = { '.git' },
"      },
"      prettier = {
"        command = 'prettier',
"        args = { '--stdin-filepath', '%filename' }
"      }
"    },
"    formatFiletypes = {
"      css = 'prettier',
"      javascript = 'eslint_d',
"      javascriptreact = 'eslint_d',
"      json = 'prettier',
"      scss = 'prettier',
"      less = 'prettier',
"      typescript = 'eslint_d',
"      typescriptreact = 'eslint_d',
"      json = 'prettier',
"      markdown = 'prettier',
"    }
"  }
"}

"-- icon
"vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
"  vim.lsp.diagnostic.on_publish_diagnostics, {
"    underline = true,
"    -- This sets the spacing and the prefix, obviously.
"    virtual_text = {
"      spacing = 4,
"      prefix = ''
"    }
"  }
")



"   function goimports(timeout_ms)
"     local context = { only = { "source.organizeImports" } }
"     vim.validate { context = { context, "t", true } }

"     local params = vim.lsp.util.make_range_params()
"     params.context = context

"     -- See the implementation of the textDocument/codeAction callback
"     -- (lua/vim/lsp/handler.lua) for how to do this properly.
"     local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
"     if not result or next(result) == nil then return end
"     local actions = result[1].result
"     if not actions then return end
"     local action = actions[1]

"     -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
"     -- is a CodeAction, it can have either an edit, a command or both. Edits
"     -- should be executed first.
"     if action.edit or type(action.command) == "table" then
"       if action.edit then
"         vim.lsp.util.apply_workspace_edit(action.edit)
"       end
"       if type(action.command) == "table" then
"         vim.lsp.buf.execute_command(action.command)
"       end
"     else
"       vim.lsp.buf.execute_command(action)
"     end
"   end

" autocmd BufWritePre *.go lua goimports(1000)

