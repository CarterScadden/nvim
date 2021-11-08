local lsp_config = require 'lspconfig'
local key_bindings = require 'utils/key_bindings'
local commands = require 'utils/commands'

local function Setup()
  lsp_config.pyright.setup{
    on_attach = function(client, bufnr)
      key_bindings.Use(client, bufnr)
      commands.Use()
    end
  }
end

return {
  Setup = Setup
}
