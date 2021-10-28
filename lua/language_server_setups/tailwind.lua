local lsp_config = require 'lspconfig'
local coq = require 'coq'

local function Setup()
  lsp_config.tailwindcss.setup{coq.lsp_ensure_capabilities}
end

return {
  Setup = Setup
}
