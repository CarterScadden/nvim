-- eslint config
local config = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"},
  lintIgnoreExitCode = true,
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}


-- checks for an eslint file, if it finds one, returns that we are good, else returns with false, telling us not to start
local function should_use()
  local eslintrc = vim.fn.glob(".eslint*", 0, 1)

  if not vim.tbl_isempty(eslintrc) then
    return true
  end

  return false
end

local function Attach(client)
  if should_use() then
    client.resolved_capabilities.document_formatting = true
    client.resolved_capabilities.goto_definition = false

    -- format on save 
    vim.cmd [[augroup Format]]
    vim.cmd [[autocmd! * <buffer>]]
    vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
    vim.cmd [[augroup END]]
  end
end

local function GetRootDir()
  if not should_use() then
    return nil
  end

  -- return current directory
  return vim.fn.getcwd()
end

return {
  Attach = Attach,
  GetRootDir = GetRootDir,
}
