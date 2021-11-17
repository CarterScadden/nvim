call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

"Plug 'CarterScadden/neovim-window'

"" [FZF] file explorer
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'

" [Syntax highlighting]
Plug 'sheerun/vim-polyglot'

" [Git]
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" [Theme]
Plug 'itchyny/lightline.vim'
Plug 'haishanh/night-owl.vim'
Plug 'dracula/vim'

" [Window Splitting]
"Plug 'beauwilliams/focus.nvim'

" [Documenter]
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" [Multi Cursor]
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" [Language Server]
Plug 'neovim/nvim-lspconfig' " lsp
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " coq
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " 9000 snippets

" [Code action menu]
Plug 'weilbith/nvim-code-action-menu'

" [Rust]
Plug 'rust-lang/rust.vim'

call plug#end()

execute 'source' '~/.config/nvim/config/lsp/index.vim'
execute 'source' '~/.config/nvim/config/plugins/fzf.vim'
execute 'source' '~/.config/nvim/config/plugins/doge.vim'
execute 'source' '~/.config/nvim/config/plugins/focus.vim'
execute 'source' '~/.config/nvim/config/plugins/theme.vim'
execute 'source' '~/.config/nvim/config/plugins/lightline.vim'
