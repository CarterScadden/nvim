-- ## TELESCOPE ## --

vim.cmd [[
  nnoremap <C-p> <cmd>Telescope find_files find_command=rg,--hidden,--files<cr>
  "nnoremap <C-r> <cmd>Telescope live_grep --hidden<cr>
]]

vim.api.nvim_set_keymap('n', '<C-r>', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', {})

local telescope = require('telescope')
telescope.setup{
  defaults = {
    -- mappings = {
    --   i = {
    --     ["<esc>"] = vim.actions.close
    --   },
    -- },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case"
      -- "--trim" -- add this value
    }
  }
}

-- telescope.load_extension('rg')

-- ## COLOR SCHEME ## --
vim.cmd "colorscheme dracula"

-- https://github.com/sunjon/Shade.nvim
--[[
local shade = require "shade"
shade.setup({
  overlay_opacity = 60,
  opacity_step = 1,
  keys = {
    brightness_up    = '<C-Up>',
    brightness_down  = '<C-Down>',
    toggle           = '<Leader>s',
  }
})
--]]

-- ## COLORIZER ## --
-- https://github.com/norcalli/nvim-colorizer.lua
local colorizer = require "colorizer"
colorizer.setup()

-- ## RANGER ## --
vim.cmd "noremap <C-e> <cmd>Ranger<CR>"

-- ## PRESENCE ## --

--[[
local presence = require "presence"

presence:setup({
    -- General options
    -- Update activity based on autocmd events
    -- (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    auto_update         = true,                       
    -- Text displayed when hovered over the Neovim image
    neovim_image_text   = "The One True Text Editor", 
    -- Main image display (either "neovim" or "file")
    main_image          = "neovim",                   
    -- Use your own Discord application
    -- client id (not recommended)
    -- client_id           = "209066889714860032",       
    -- Log messages at or above this level
    -- (one of the following: "debug", "info", "warn", "error")
    log_level           = "error",                        
    -- Number of seconds to debounce events
    -- (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    debounce_timeout    = 10,                         
    -- Displays the current line number instead of the current project
    enable_line_number  = false,                      
    -- A list of strings or Lua patterns that disable Rich Presence if
    -- the current file name, path, or workspace matches
    blacklist           = {},                         
    -- Configure Rich Presence button(s), either a boolean to enable/disable,
    -- a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    buttons             = true,                       

    -- Rich Presence text options
    -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    -- editing_text        = "Editing %s",               
    -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    -- file_explorer_text  = "Browsing %s",              
    -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    git_commit_text     = "Committing changes",       
    -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    plugin_manager_text = "Managing plugins",         
    -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    -- reading_text        = "Reading %s",               
    -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    -- workspace_text      = "Working on %s",            
    -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    -- line_number_text    = "Line %s out of %s",        
})
--]]

-- TESTING -- vim-test/vim-test
-- UPDATE THESE
-- :help ultest-commands
--[[
vim.cmd [[
  nmap <leader>f :TestFile<CR>
  nmap <leader>s :TestSuite<CR>
  nmap <leader>v :TestVisit<CR>
]]
--]]
