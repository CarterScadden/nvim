-- RANGER
vim.cmd [[
  let g:ranger_map_keys = 0
  let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'
]]

-- COLORIZOR
vim.cmd "set termguicolors"

-- LIGHT LINE (Status line stuff)
vim.cmd [[
  let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'background': 'dark',
    \ }

  if !has('gui_running')
    set t_Co=256
  endif
]]

-- COQ
vim.g.coq_settings = {
  auto_start = "shut-up",
  keymap = {
    jump_to_mark = "<leader>j",
  },
  clients = {
    buffers = {
      enabled = true,
      weight_adjust = -1.9,
    },
    tree_sitter = {
      enabled = true,
      weight_adjust = -1.5
    },
    lsp = {
      enabled = true,
      weight_adjust = 1.5
    },
    snippets = {
      enabled = true,
      weight_adjust = 1.9
    },
  }
}

-- TESTING -- rcarriga/vim-ultest
vim.cmd "let g:ultest_use_pty = 1"

-- n³ (nnn)
vim.cmd "let g:nnn#set_default_mappings = 0"
vim.cmd "let g:nnn#command = 'nnn -H'"
