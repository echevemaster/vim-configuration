set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" Vundle package
Plugin 'gmarik/vundle'

" Ack
Plugin 'mileszs/ack.vim'

" Close tags
Plugin 'docunext/closetag.vim'

" Command-T
Plugin 'wincent/Command-T.git'

" DelimitMate
Plugin 'Raimondi/delimitMate'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Vim-git
Plugin 'tpope/vim-git'

" Gundo
Plugin 'sjl/gundo.vim'

" Jedi-vim
Plugin 'davidhalter/jedi-vim'

" Makegreen
Plugin 'reinh/vim-makegreen'

" Minibufexpl
Plugin 'fholgado/minibufexpl.vim'

" pep8
Plugin 'vim-scripts/pep8'

" Surround
Plugin 'tpope/vim-surround'

" TagBar
Plugin 'majutsushi/tagbar'

" Tasklist
Plugin 'vim-scripts/TaskList.vim'

" ultisnips
Plugin 'SirVer/ultisnips'

" Vim-jinja
Plugin 'mitsuhiko/vim-jinja'

" vim-solarized
Plugin 'altercation/vim-colors-solarized'

" Jellybeans 
Plugin 'nanotech/jellybeans.vim'

" vim-airline
Plugin 'bling/vim-airline'

" supertab
Plugin 'ervandew/supertab'

" Youcompleteme
Plugin 'Valloric/YouCompleteMe'

" Syntaxtic
Plugin 'scrooloose/syntastic'

" PyFlakes
Plugin 'kevinw/pyflakes-vim'

" Plugins scala related
Plugin 'derekwyatt/vim-scala'

Plugin 'ktvoelker/sbt-vim'

Plugin 'mpollmeier/vim-scalaConceal'

Plugin 'gre/play2vim'

" 256 Colors
set t_Co=256
" colorscheme jellybeans
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized
set hidden
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set nu
filetype indent on
filetype on
filetype plugin on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79

noremap <leader>v <Plug>TaskList
let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix = 0
set laststatus=2
let mapleader=','
let maplocalleader='\\'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:scala_sort_across_groups=1

noremap <leader>a :Ack
noremap <leader>A :AckFromSearch<CR>
noremap <leader>u :GundoToggle<CR>
" Split management
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>W <C-w>s
" " nnoremap <leader>Th :set ft=htmljinja<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>s :new<CR>
nnoremap <leader>q :q<CR>
set enc=utf-8
nnoremap <leader><space> :nohlsearch<cr>
set pastetoggle=<F2>
"
" Window size management {
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> . :exe "vertical resize +20"<CR>
nnoremap <silent> m :exe "vertical resize -20"<CR>
nnoremap <silent> > :exe "resize +10"<CR>
nnoremap <silent> < :exe "resize -10"<CR>

" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
