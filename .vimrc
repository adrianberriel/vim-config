set nocompatible                " choose no compatibility with legacy vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'molokai'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'ctrlp.vim'
"Bundle 'UltiSnips'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'

filetype plugin indent on       " load file type plugins + indentation
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

if has("gui_gtk")
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=l
  "  set lines=40
endif

set number
set laststatus=2
set cursorline
set t_Co=256
colorscheme molokai
set listchars=trail:·,tab:▸\ ,eol:↲
set list
let mapleader=","
set wildmenu
set omnifunc=syntaxcomplete#Complete
"set wildmode=list:longest,full

" Clipboard
set clipboard=unnamed
nnoremap y "+y
vnoremap y "+y

"" Plugins configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:NERDTreeChDirMode = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
