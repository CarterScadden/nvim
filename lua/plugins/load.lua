local packer = require "packer"

return packer.startup(function(use)
  use "nvim-lua/plenary.nvim"

  use 'stevearc/dressing.nvim'

  -- Git
  use "tpope/vim-fugitive"
  use "airblade/vim-gitgutter"

  -- Status line
  use "itchyny/lightline.vim"

  -- Theme
  use "dracula/vim"

  -- For auto gen documentation
  use {
    "kkoomen/vim-doge",
     run = "doge#install()"
  }

  -- Multiple cursors!
  use {
    "mg979/vim-visual-multi",
    branch = 'master'
  }

  -- LSP [Live Server Protocol]
  use "neovim/nvim-lspconfig"
  use {
    "ms-jpq/coq_nvim",
    branch = "coq"
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use "rust-lang/rust.vim"

  -- use "sunjon/shade.nvim"
  use "norcalli/nvim-colorizer.lua"


  use {
      'goolord/alpha-nvim',
      config = function ()
          require"alpha".setup(require"alpha.themes.dashboard".opts)
      end
  }

  use {
    "junegunn/fzf",
    run = "fzf#install()"
  }

  -- QUICK FIX
  -- https://github.com/kevinhwang91/nvim-bqf
  use {
    "kevinhwang91/nvim-bqf",
    ft = "qt"
  }

  -- ranger, ctrl-e
  use "rbgrouleff/bclose.vim"
  use "francoiscabrol/ranger.vim"

  -- discord presence
  use 'andweeb/presence.nvim'

  -- testing
  use "vim-test/vim-test"

  use {
    "rcarriga/vim-ultest",
    requires = {"vim-test/vim-test"},
    run = ":UpdateRemotePlugins"
  }

  -- Graphql support
  use "jparise/vim-graphql"

  -- tabline
  use {
    "nanozuki/tabby.nvim",
    config = function()
      require("tabby").setup({
        tabline = require("tabby.presets").tab_only
      })
    end,
  }
end)

