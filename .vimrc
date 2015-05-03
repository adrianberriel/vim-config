set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin manager
Plugin 'gmarik/Vundle.vim', {'pinned': 1}

" Plugins
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'tmhedberg/matchit'
Plugin 'mhinz/vim-signify'
Plugin 'krisajenkins/vim-pipe'
"Plugin 'majutsushi/tagbar'
"For js tags: npm install -g git://github.com/ramitos/jsctags.git
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'xolox/vim-notes'
" vim-notes dependency
Plugin 'xolox/vim-misc'

if has("macunix")
  Plugin 'rizzatti/dash.vim'
endif

" Plugins to research and test
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'ntpeters/vim-better-whitespace'

" Plugins used in the past
"Plugin 'ap/vim-css-color'         "Funca mal
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'mklabs/vim-backbone'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'changesPlugin'
"Plugin 'Shougo/neocomplete.vim'

" Color themes
Plugin 'molokai'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"set rtp-=~/.vim/bundle/YouCompleteMe

filetype plugin indent on       " load file type plugins + indentation
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set mouse=a

"" Whitespace
set wrap
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set autoindent
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set number
"set colorcolumn=80             "Setea la linea de fin
set laststatus=2
"set cursorline
set t_Co=256
set background=dark
colorscheme base16-default
"colorscheme Tomorrow-Night
"colorscheme solarized
set listchars=trail:·,tab:▸\ ,eol:¬,extends:❯,precedes:❮
set list
let mapleader=","
set wildmenu
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
"set wildmode=list:longest,full
"set hidden
set nobackup
set noswapfile
set ttyfast

" Clipboard
set clipboard=unnamed
nnoremap y "+y
vnoremap y "+y

set tags+=tags;~

"" Plugins configuration
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"let g:ctrlp_show_hidden = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsListSnippets = "<c-g>"

"function! g:UltiSnips_Complete()
    "call UltiSnips#ExpandSnippet()
    "if g:ulti_expand_res == 0
        "if pumvisible()
            "return "\<C-n>"
        "else
            "call UltiSnips#JumpForwards()
            "if g:ulti_jump_forwards_res == 0
               "return "\<TAB>"
            "endif
        "endif
    "endif
    "return ""
"endfunction

"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsListSnippets="<c-e>"
"" this mapping Enter key to <C-y> to chose the current highlight item 
"" and close the selection list, same as other IDEs.
"" CONFLICT with some plugins like tpope/Endwise
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:indent_guides_guide_size = 0

" Tree view style
let g:netrw_liststyle = 3

let g:signify_vcs_list = [ 'git' ]

let g:notes_suffix = '.note'

let g:syntastic_check_on_wq = 0

"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Mappings
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <c-n> :bn<cr>
nnoremap <c-p> :bp<cr>
nnoremap <leader>* :set hlsearch!<cr>
nnoremap <leader>a :Ag
"nnoremap p p=`]
cmap w!! %!sudo tee > /dev/null %
inoremap jj <esc>

"Idea para cambiar de plugins
"set runtimepath-=~/.vim/bundle/vimacs
