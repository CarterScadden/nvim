let g:coq_settings = {
      \ "keymap.recommended": v:false,
      \ 'auto_start': 'shut-up',
      \ 'keymap.manual_complete': '<C-space>',
      \ 'keymap.jump_to_mark': '<A-h>'
      \ }

lua << EOF

local language_server_manager = require('language_server_manager')

language_server_manager.Setup()
EOF
