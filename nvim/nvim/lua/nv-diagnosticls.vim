lua << EOF

EOF

" local dlsconfig = require 'diagnosticls-configs'
" local function on_attach(client)
"   print('Attached to ' .. client.name)
" end
" local eslint = require 'diagnosticls-configs.linters.eslint'
" local standard = require 'diagnosticls-configs.linters.standard'
" local prettier = require 'diagnosticls-configs.formatters.prettier'
" local prettier_standard = require 'diagnosticls-configs.formatters.prettier_standard'
" dlsconfig.setup {
"   ['javascript'] = {
"     linter = { eslint, standard },
"     formatter = { prettier, prettier_standard }
"   },
"   ['typescript'] = {
"     linter = { eslint, standard },
"     formatter = { prettier, prettier_standard }
"   },
"   ['typescriptreact'] = {
"     linter = { eslint, standard },
"     formatter = { prettier, prettier_standard }
"   },
"   ['javascriptreact'] = {
"     linter = { eslint, standard },
"     formatter = { prettier, prettier_standard }
"   }
" }
" dlsconfig.init {
"   on_attach = on_attach,
" }

