" Vim settings
syntax enable
set noswapfile
"set nowrap
set noshowmode " handled by statusline
set noshowcmd " handled by statusline
set noruler " handled by statusline
set list
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set clipboard=unnamedplus
set hidden
set mouse=a
set number
set title
" relative line numbers
set nu rnu 
"ask to save if quit with unsaved changes
set confirm
set hidden
" from vim-sensible
set backspace=indent,eol,start
"set complete-=i
set smarttab
set autoread
if !&scrolloff
  set scrolloff=3
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline
