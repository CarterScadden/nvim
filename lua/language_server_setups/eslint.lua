local lsp_config = require 'lspconfig'
local key_bindings = require 'utils/key_bindings'
local commands = require 'utils/commands'

local function Setup()
 lsp_config.eslint.setup{
   on_attach = function(client, bufnr)
      key_bindings.Use(client, bufnr)
      --vim.cmd('autocmd BufWritePre <buffer> EslintFixAll')

      vim.cmd([[
      augroup EslintCommands
         autocmd!
         autocmd BufWritePre <buffer> EslintFixAll
      augroup END
      ]])

      -- commands.Use()
   end
 }
end

return {
  Setup = Setup
}
