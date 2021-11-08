local lsp_config = require 'lspconfig'
local coq = require 'coq'

local function Setup()
  lsp_config.vimls.setup{}
end

return {
  Setup = Setup
}
