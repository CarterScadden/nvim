


call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'CarterScadden/neovim-window'

"" [FZF] file explorer
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" [Ranger] directory explorer
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" [Syntax highlighting]
Plug 'sheerun/vim-polyglot'

" [Theme]
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

" Window Splitting
Plug 'beauwilliams/focus.nvim'

" [Documenter]
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" [Language Server]
Plug 'neovim/nvim-lspconfig' " lsp
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " coq
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " 9000 snippets

call plug#end()

execute 'source' '~/.config/nvim/config/lsp/index.vim'
execute 'source' '~/.config/nvim/config/plugins/fzf.vim'
execute 'source' '~/.config/nvim/config/plugins/ranger.vim'
execute 'source' '~/.config/nvim/config/plugins/doge.vim'
execute 'source' '~/.config/nvim/config/plugins/focus.vim'
execute 'source' '~/.config/nvim/config/plugins/theme.vim'
execute 'source' '~/.config/nvim/config/plugins/lightline.vim'
