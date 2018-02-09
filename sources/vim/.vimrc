set relativenumber
set number

autocmd! VimEnter * colorscheme 0x7A69_dark

let g:ale_open_list=1
let g:ale_list_window_size=3
let g:ale_python_pylint_executable="pylint3"

" Plugins
call plug#begin('~/.vim/addons')
  " Lint
Plug 'https://github.com/w0rp/ale.git'

  " Status
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'

  " ColorScheme
Plug 'https://github.com/flazz/vim-colorschemes.git'

  " Use
Plug 'https://github.com/Abdulwahaab710/vim-use.git'

call plug#end()
