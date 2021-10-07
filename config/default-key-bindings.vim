" stop arrow keys, learn vim correctly
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

" line / column movement
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" quick jump between windows
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" generate docs
nmap <A-;> :DogeGenerate<CR>

"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gr <Plug>(coc-references)
"nmap <silent> <F2> <Plug>(coc-rename)
"nnoremap <C-i> :call <SID>show_documentation()<CR>
"nmap <F6> <Plug>(coc-diagnostic-prev)
"nmap <F8> <Plug>(coc-diagnostic-next)
"nnoremap <silent><expr> <C-space> coc#refresh()
"inoremap <silent><expr> <c-space> coc#refresh()
"nmap <A-i> :CocAction<CR>

