augroup neovim
  autocmd!
  "autocmd VimEnter * ++nested lua require'lint'.try_lint()
  "autocmd CursorHold * silent call CocActionAsync('highlight')
  "autocmd BufWritePre * ++nested lua require'lint'.try_lint()

  "autocmd vimenter * ++nested colorscheme gruvbox
  "autocmd vimEnter * ++nested hi! Normal     guibg=NONE ctermbg=NONE
  "autocmd vimenter * ++nested hi! CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  "autocmd vimenter * ++nested hi! LineNr     cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  "autocmd vimenter * ++nested hi! SignColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  "autocmd vimenter * ++nested hi! Normal guibg=none ctermbg=none
  "autocmd vimenter * ++nested hi! LineNr guibg=none ctermbg=none autocmd vimenter * ++nested hi! Folded guibg=none ctermbg=none autocmd vimenter * ++nested hi! NonText guibg=none ctermbg=none autocmd vimenter * ++nested hi! SpecialKey guibg=none ctermbg=none
  "autocmd vimenter * ++nested hi! VertSplit guibg=none ctermbg=none
  "autocmd vimenter * ++nested hi! SignColumn guibg=none ctermbg=none
  "autocmd vimenter * ++nested hi! EndOfBuffer guibg=none ctermbg=none

  autocmd VimEnter * call SetupLightlineColors()
  "autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx call FormatEslint()

  command FormatJSON call FormatJSON()
  command FormatEslint call FormatEslint()
  command GPushUp call GPushUp()

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
  :EslintFixAll
  :w
endfunction

function! GPushUp()
  :Git -c push.default=current push
endfunction
