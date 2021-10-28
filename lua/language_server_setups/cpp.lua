local lsp_config = require 'lspconfig'
local key_bindings = require 'utils/key_bindings'
local commands = require 'utils/commands'

local function Setup()
  lsp_config.clangd.setup{
    cmd = {
      "clangd",
      "--background-index",
      "--suggest-missing-includes",
    },
    on_attach = function(client, bufnr)
      key_bindings.Use(client, bufnr)
      commands.Use()
    end
  }
end

return {
  Setup = Setup
}
