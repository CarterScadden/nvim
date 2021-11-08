set clipboard=unnamedplus
filetype plugin on

let g:netrw_liststyle=3

set list
set listchars=trail:-,eol:$
set splitright
set timeoutlen=500
set tabstop=2
set numberwidth=4
set signcolumn="auto:2,3"
set expandtab
set showmatch
set shiftwidth=2
set matchpairs=(:),\[:\],{:},<:>
hi clear MatchParen 
hi MatchParen cterm=underline gui=underline
set ignorecase
set smartcase
set smartindent
set number
set relativenumber

set wildmenu
set foldmethod=manual
set foldenable
set foldlevelstart=10
set foldnestmax=10

set nohidden
set noswapfile
set formatoptions-=ro
set updatetime=200
set mouse=n
set wrap
set linebreak
set timeoutlen=500

set laststatus=2
"set statusline=%{FugitiveStatusline()}
set ruler
set noshowmode
set termguicolors
