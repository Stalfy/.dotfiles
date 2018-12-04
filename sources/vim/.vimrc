" Settings
set relativenumber
set number
set expandtab 
set tabstop=4
set shiftwidth=4

autocmd! VimEnter * colorscheme burnttoast256

let g:ale_open_list=1
let g:ale_list_window_size=3
let g:ale_python_pylint_executable="pylint3"
let g:ale_linters = {'python': ['pylint']}

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
