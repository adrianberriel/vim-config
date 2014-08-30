set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin manager
"Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'tmhedberg/matchit'
Plugin 'changesPlugin'
Plugin 'krisajenkins/vim-pipe'
Plugin 'majutsushi/tagbar'
"For js tags: npm install -g git://github.com/ramitos/jsctags.git
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
"Plugin 'ap/vim-css-color'         "Funca mal
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'mklabs/vim-backbone'
" Investigar
"Plugin 'Lokaltog/vim-easymotion'

" Color themes
Plugin 'molokai'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on       " load file type plugins + indentation
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set wrap
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
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
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10
  colorscheme base16-default
endif

set number
"set colorcolumn=80             "Setea la linea de fin
set laststatus=2
set cursorline
set t_Co=256
set background=dark
colorscheme Tomorrow-Night
"colorscheme solarized
set listchars=trail:·,tab:▸\ ,eol:↲
set list
"let mapleader=","
set wildmenu
set omnifunc=syntaxcomplete#Complete
"set wildmode=list:longest,full

" Clipboard
set clipboard=unnamed
nnoremap y "+y
vnoremap y "+y

"" Plugins configuration
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
" Set no max file limit
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'

let g:airline_powerline_fonts=1

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

let g:indent_guides_guide_size = 1

" Mappings
"nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <c-n> :bn<cr>
nnoremap <c-p> :bp<cr>
"nnoremap p p=`]
cmap w!! %!sudo tee > /dev/null %

"Idea para cambiar de plugins
"set runtimepath-=~/.vim/bundle/vimacs
