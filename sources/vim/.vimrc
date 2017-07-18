" Plugins
call plug#begin('~/.vim/addons')
  " Lint
Plug 'https://github.com/neomake/neomake.git'

call plug#end()

" Commands
autocmd! BufWritePost * Neomake

" Display
set relativenumber
set number
