set nocompatible                " choose no compatibility with legacy vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'molokai'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'chriskempson/base16-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'changesPlugin'
Bundle 'krisajenkins/vim-pipe'
Bundle 'majutsushi/tagbar'
Bundle 'fholgado/minibufexpl.vim'

filetype plugin indent on       " load file type plugins + indentation
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set wrap
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

if has("gui_running")
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  set lines=50
  set columns=100
  set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 10
  colorscheme base16-default
endif

set number
set laststatus=2
set cursorline
set t_Co=256
colorscheme Tomorrow-Night
set listchars=trail:·,tab:▸\ ,eol:↲
set list
let mapleader=","
set wildmenu
"set omnifunc=syntaxcomplete#Complete
"set wildmode=list:longest,full

" Clipboard
set clipboard=unnamed
nnoremap y "+y
vnoremap y "+y

"" Plugins configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:NERDTreeChDirMode = 2
let g:airline_powerline_fonts=1
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:changes_autocmd=1

" Mappings
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-l> <c-w>l
"nnoremap <c-h> <c-w>h
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>u :GundoToggle<cr>
"nnoremap <c-tab> :bn<cr>
"nnoremap <c-s-tab> :bp<cr>
