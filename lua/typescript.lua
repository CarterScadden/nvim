local coq = require('coq')
local lsp_config = require('lspconfig')

local function Setup()
  print("running ts & null_ls setup...")

  require('null-ls').config {}
  lsp_config["null-ls"].setup {}

  lsp_config.tsserver.setup{--coq.lsp_ensure_capabilities{
    on_attach = function(client, bufnr)
      print("ts server attaching!")
      client.resolved_capabilities.document_formatting = false 
      client.resolved_capabilities.document_range_formatting = false

      local ts_utils = require("nvim-lsp-ts-utils")

      ts_utils.setup {
        debug = true,
        disable_commands = false,
        enable_import_on_completion = true,

        -- import all
        import_all_timeout = 5000, -- ms
        import_all_priorities = {
            buffers = 4, -- loaded buffer names
            buffer_content = 3, -- loaded buffer content
            local_files = 2, -- git files or files with relative path markers
            same_file = 1, -- add to existing import statement
        },
        import_all_scan_buffers = 100,
        import_all_select_source = false,

        -- eslint
        eslint_enable_code_actions = true,
        eslint_enable_disable_comments = true,
        eslint_bin = "eslint_d",
        eslint_enable_diagnostics = true,
        eslint_opts = {},

        -- formatting
        enable_formatting = true,
        formatter = "eslint_d",
        formatter_opts = {},

        -- update imports on file move
        update_imports_on_move = true,
        require_confirmation_on_move = false,
        watch_dir = nil,

        -- filter diagnostics
        filter_out_diagnostics_by_severity = {},
        filter_out_diagnostics_by_code = {},
      }

      -- required to fix code action ranges and filter diagnostics
      ts_utils.setup_client(client)

      local opts = { noremap=true, silent=true }
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      -- Enable completion triggered by <c-x><c-o>
      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- GO TO's
      buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
      buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
      buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
      buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)

      -- rename
      buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

      -- show information, (show jsdoc info, [var name: type/value]
      buf_set_keymap('n', '<C-i>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
      -- code actions, (remove, import, fix spelling, etc)
      buf_set_keymap('n', '<A-i>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)


      -- shows where xyz where something is
      buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

      -- CHECK WHAT THESE DO
      -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      buf_set_keymap('n', '<A-I>', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)

      -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
      -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
      -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)

      buf_set_keymap('n', '<Left>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
      buf_set_keymap('n', '<Right>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)

      buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
      buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

      -- format on save 
      vim.cmd [[augroup Format]]
      vim.cmd [[autocmd! * <buffer>]]
      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
      vim.cmd [[augroup END]]
    end
  } -- }
end

return {
  Setup = Setup
}
