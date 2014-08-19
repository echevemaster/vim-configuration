colo vividchalk
execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on


call pathogen#incubate()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
nnoremap <leader>v <Plug>TaskList
" autocmd VimEnter * NERDTree
" autocmd VimEnter * TagbarOpen
" autocmd VimEnter * if !argc() | NERDTree | endif
let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix = 0
