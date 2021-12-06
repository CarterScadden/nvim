local lsp_config = require "lspconfig"
local key_bindings = require "lsp/utils/key_bindings"
local commands = require "lsp/utils/commands"

lsp_config.gopls.setup{
  on_attach = function(client, bufnr)
    key_bindings.Use(client, bufnr)
    commands.Use(true)
  end
}

