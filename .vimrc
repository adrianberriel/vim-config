set nocompatible                " choose no compatibility with legacy vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'molokai'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'ctrlp.vim'

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

set statusline=2
set t_Co=256
set cursorline
colorscheme molokai
set listchars=trail:·,tab:▸\ ,eol:↲
set list
