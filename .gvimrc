if has("gui_gtk2")
  set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
endif
if has("gui_macvim")
  set guifont=Sauce\ Code\ Powerline:h14
endif
colorscheme Monokai
set guioptions-=m
set guioptions-=T
set mouse=a
set lines=48
set columns=100
set cursorline
set colorcolumn=80

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
