local lsp_config = require "lspconfig"
local pretty_diagnostics = require "lsp/utils/pretty_diagnostics"
local coq = require "coq"

pretty_diagnostics.Use()

for _, server in pairs({
  "gopls",
  "rust_analyzer",
  "elmls",
  "clangd",
  "eslint",
  "pyright",
  "tailwindcss",
  "tsserver",
  "nimls",
  "sumneko_lua",
  -- "vimls",
  -- "graphql",
  "java_language_server",
}) do
  local config = require ("lsp/servers/" .. server)
  lsp_config[server].setup(coq.lsp_ensure_capabilities(config))
end

