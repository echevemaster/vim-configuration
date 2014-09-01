execute pathogen#infect()
syntax on
filetype on
filetype plugin on
filetype plugin indent on 

call pathogen#incubate()
call pathogen#helptags()

" set t_Co=256
set background=dark
" colorscheme vividchalk
colorscheme jellybeans
" colorscheme smyck
" set foldmethod=indent
" set foldlevel=99

" set nocompatible
set hidden
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set nu
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
nnoremap <leader>v <Plug>TaskList
let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix = 0
" autocmd VimEnter * NERDTree
" autocmd VimEnter * TagbarOpen
" autocmd VimEnter * if !argc() | NERDTree | endif
set laststatus=2
" Filename
set statusline=%<%f\
" " Options
set statusline+=%w%h%m%r
" " Git Hotness
set statusline+=%{fugitive#statusline()}
" " Filetype
set statusline+=\ [%{&ff}/%Y]
" " Directory
set statusline+=\ [%{getcwd()}]
" " File info
set statusline+=%=%-14.(%l,%c%V%)\ %p%%}
let mapleader=","
let maplocalleader="\\"
nnoremap <leader>a :Ack
nnoremap <leader>A :AckFromSearch<CR>
nnoremap <Leader>u :GundoToggle<CR>
" Split management
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>W <C-w>s
" nnoremap <leader>Th :set ft=htmljinja<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>s :new<CR>
nnoremap <leader>q :q<CR>
set enc=utf-8
nnoremap <leader><space> :nohlsearch<cr>
set pastetoggle=<F2>

" Window size management {
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> . :exe "vertical resize +20"<CR>
nnoremap <silent> m :exe "vertical resize -20"<CR>
nnoremap <silent> > :exe "resize +10"<CR>
nnoremap <silent> < :exe "resize -10"<CR>
" Snippets ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
