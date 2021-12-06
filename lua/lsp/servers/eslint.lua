local lsp_config = require "lspconfig"
local key_bindings = require "lsp/utils/key_bindings"
local commands = require "lsp/utils/commands"

lsp_config.eslint.setup{
 on_attach = function(client, bufnr)
    key_bindings.Use(client, bufnr)

    -- TODO: FIX THIS double save issue
    vim.cmd([[
    augroup EslintCommands
       autocmd!
       autocmd BufWritePre * ++nested EslintFixAll
    augroup END
    ]])
 end
}

