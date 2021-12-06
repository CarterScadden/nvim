-- RANGER
vim.cmd "let g:ranger_map_keys = 0"

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
