" Plugins
call plug#begin('~/.vim/addons')
  " Lint
Plug 'https://github.com/neomake/neomake.git'

call plug#end()

" Commands
autocmd! BufWritePost * Neomake

" Neomake
:highlight NeomakeErrorMsg ctermfg=227 ctermbg=237
let g:neomake_warning_sign={'text': '⚠', 'texthl': 'NeomakeErrorMsg'}

" Display
set relativenumber
set number
