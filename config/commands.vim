augroup neovim
  autocmd!
  "autocmd VimEnter * ++nested lua require'lint'.try_lint()
  "autocmd CursorHold * silent call CocActionAsync('highlight')
  "autocmd BufWritePre * ++nested lua require'lint'.try_lint()

  autocmd vimenter * ++nested colorscheme gruvbox
  autocmd vimEnter * ++nested hi! Normal guibg=NONE ctermbg=NONE
  autocmd vimenter * ++nested hi! CursorLine cterm=NONE ctermbg=grey ctermfg=white guibg=NONE guifg=NONE
  autocmd vimenter * ++nested hi! LineNr guibg=NONE ctermbg=NONE
  autocmd VimEnter * call SetupLightlineColors()
  "autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx call FormatEslint()

  command FormatJSON call FormatJSON()
  command FormatEslint call FormatEslint()
augroup END

function SetupLightlineColors() abort

  " transparent background in statusbar
  let l:palette = lightline#palette()

  let l:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let l:palette.normal.right = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let l:palette.insert.middle = l:palette.normal.middle
  let l:palette.visual.middle = l:palette.normal.middle
  let l:palette.inactive.middle = l:palette.normal.middle
  let l:palette.tabline.middle = l:palette.normal.middle

  call lightline#colorscheme()
endfunction


function! FormatJSON()
  :%!jq .
endfunction

function! FormatEslint()
  :!eslint_d % --fix
endfunction

