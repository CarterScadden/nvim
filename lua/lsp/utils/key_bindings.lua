-- Mappings.
local opts = { noremap=true, silent=true }

local function Use(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  -- buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- GO TO"s
  buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)

  buf_set_keymap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  buf_set_keymap("n", "<C-i>", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) -- show information, (show jsdoc info, [var name: type/value]
  -- buf_set_keymap("n", "<A-i>", ":CodeActionMenu<CR>", opts) -- code actions, (remove, import, fix spelling, etc)
  buf_set_keymap("n", "<A-i>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  buf_set_keymap("n", "<A-I>", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)

  buf_set_keymap("n", "<Left>", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "<Right>", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)

  -- buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
  buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

return {
  Use = Use
}
