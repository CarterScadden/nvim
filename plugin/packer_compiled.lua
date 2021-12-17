-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/carter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/carter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/carter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/carter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/carter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\2_\0\0\3\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\1B\0\2\1K\0\1\0\topts\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/bclose.vim",
    url = "https://github.com/rbgrouleff/bclose.vim"
  },
  coq_nvim = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/carter/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/ranger.vim",
    url = "https://github.com/francoiscabrol/ranger.vim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["tabby.nvim"] = {
    config = { "\27LJ\2\2m\0\0\4\0\a\0\f6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\5\0006\2\0\0'\3\3\0B\2\2\0029\2\4\2=\2\6\1B\0\2\1K\0\1\0\ftabline\1\0\0\rtab_only\18tabby.presets\nsetup\ntabby\frequire\0" },
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/tabby.nvim",
    url = "https://github.com/nanozuki/tabby.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  vim = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/dracula/vim"
  },
  ["vim-doge"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim-doge",
    url = "https://github.com/kkoomen/vim-doge"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim-graphql",
    url = "https://github.com/jparise/vim-graphql"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim-ultest",
    url = "https://github.com/rcarriga/vim-ultest"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/carter/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: tabby.nvim
time([[Config for tabby.nvim]], true)
try_loadstring("\27LJ\2\2m\0\0\4\0\a\0\f6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\5\0006\2\0\0'\3\3\0B\2\2\0029\2\4\2=\2\6\1B\0\2\1K\0\1\0\ftabline\1\0\0\rtab_only\18tabby.presets\nsetup\ntabby\frequire\0", "config", "tabby.nvim")
time([[Config for tabby.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\2_\0\0\3\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\1B\0\2\1K\0\1\0\topts\27alpha.themes.dashboard\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qt ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qt" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end