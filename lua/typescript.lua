local coqkeybind = require('coqkeybind')
local lsp = require('lspconfig')

local function Setup()
  lsp.tsserver.setup {coq.lsp_ensure_capabilities{
    on_attach = function(client, bufnr)

      print("Typescript server getting setup..")
      client.resolved_capabilities.document_formatting = false

      if client.config.flags then
        client.config.flags.allow_incremental_sync = true
      end

      print("ts can format: ", client.resolved_capabilities.document_formatting)
 
      coqkeybind.Use(client, bufnr)
    end,
    flags = {
      debounce_text_changes = 150,
    },
  }}
end

return {
  Setup = Setup
}
