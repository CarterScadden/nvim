local lsp_config = require 'lspconfig'
local pretty_diagnostics = require 'utils/pretty_diagnostics'

local langauge_servers = {
  'elm',
  'cpp',
  'eslint',
  'python',
  'tailwind',
  'typescript',
  'vim',
}

local function setup_servers(i, max)
  local atMax = i == max

  if not atMax then
    local path = 'language_server_setups/' .. langauge_servers[i]
    local server = require (path)
    server.Setup()

    setup_servers(i + 1, max)
  end
end

local function Setup()
  pretty_diagnostics.Use()

  setup_servers(1, #langauge_servers)
end

return {
  Setup = Setup
}
