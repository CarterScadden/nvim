local lsp_config = require 'lspconfig'
local key_bindings = require 'utils/key_bindings'
local commands = require 'utils/commands'

local function Setup()
  print("setting up elmls")
  lsp_config.elmls.setup{
    on_attach = function(client, bufnr)
      print("attaching elmls")
      key_bindings.Use(client, bufnr)
      commands.Use()
    end
  }
end

return {
  Setup = Setup
}
