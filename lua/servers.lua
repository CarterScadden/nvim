local lspconfig = require('lspconfig')
local coq = require('coq')

local function InitServers()
  lspconfig.vimls.setup{coq.lsp_ensure_capabilities}
  lspconfig.tailwindcss.setup{coq.lsp_ensure_capabilities}

  --local efm = require('efm')
  --efm.Setup()

  local typescript = require('typescript')
  typescript.Setup()

  -- local luaservice = require('luaservice')
  -- luaservice.Setup()
end

return {
  InitServers = InitServers
}
