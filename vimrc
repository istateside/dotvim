filetype off
execute pathogen#infect()
filetype plugin indent on

let mapleader = ','
set nocompatible " turns off vi compatibility
syntax enable
set encoding=utf8
set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete\ Mono:h11

set ruler
set display+=lastline
set relativenumber
set undofile
set backspace=indent,eol,start
set visualbell
set showmode
set showcmd
set ttyfast
set laststatus=2

" tab settings 
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" search settings
nnoremap / /\v
vnoremap / /\v
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set hlsearch
nnoremap <leader>a :Ack
nnoremap <leader><space> :noh<cr>

" remap ESC to jj for easier use
inoremap jj <Esc>

" handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

let g:webdevicons_conceal_nerdtree_brackets=1
let g:WebDevIconsNerdTreeAfterGlyphPadding=''

let g:airline#extensions#tabline#enabled = 1
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" nerdcommenter settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" vim-move settings
let g:move_key_modifier = 'C'

" ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/*,*/bower_components/*

" ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set hidden " allows switching buffers without saving.

set background=dark
colorscheme onedark

set scrolloff=10 " always keep 10 lines visible around current line 
set updatetime=250

set autoread
autocmd Bufread,BufNewFile Gemfile setfiletype ruby
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

