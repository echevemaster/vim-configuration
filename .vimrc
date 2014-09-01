colo vividchalk
execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

" disable backup and swap files
set nobackup
set noswapfile

set history=100
set undolevels=400


call pathogen#incubate()
call pathogen#helptags()

" set foldmethod=indent
" set foldlevel=99
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
" set colorcolumn=81
" highlight colorColumn guibg=Gray14
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
nnoremap <leader>v <Plug>TaskList
" autocmd VimEnter * NERDTree
" autocmd VimEnter * TagbarOpen
" autocmd VimEnter * if !argc() | NERDTree | endif
let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix = 0
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

