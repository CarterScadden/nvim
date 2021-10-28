local coq = require('coq')
local lsp_config = require 'lspconfig'
local key_bindings = require 'utils/key_bindings'
local commands = require 'utils/commands'

local function Setup()
  lsp_config.tsserver.setup{coq.lsp_ensure_capabilities{
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false 
      client.resolved_capabilities.document_range_formatting = false

      key_bindings.Use(client, bufnr)
      commands.Use()
    end
  }}
end

return {
  Setup = Setup
}
