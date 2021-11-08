local lsp_config = require 'lspconfig'

local function Setup()
  lsp_config.tailwindcss.setup{}
end

return {
  Setup = Setup
}
