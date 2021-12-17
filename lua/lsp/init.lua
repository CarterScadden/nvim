local lsp_config = require "lspconfig"
local pretty_diagnostics = require "lsp/utils/pretty_diagnostics"

pretty_diagnostics.Use()

for _, server in pairs({
  "go",
  "rust",
  "elm",
  "cpp",
  "eslint",
  "python",
  "tailwind",
  "typescript",
  "vim",
  "graphql",
}) do
  require ("lsp/servers/" .. server)
end

