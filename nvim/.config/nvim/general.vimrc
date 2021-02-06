" Vim settings

syntax enable

set noswapfile
set wrap
set linebreak " visual break at special characters only
set list
set tabstop=2 shiftwidth=2 expandtab " use spaces
set autoindent
set clipboard=unnamedplus
set hidden
set mouse=a
set title

" height of minimized files
set wmh=0

" relative line numbers
set number rnu

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

" Split window below/right when creating horizontal/vertical windows
set splitbelow splitright

" no numbers in terminal buffers
autocmd TermOpen * setlocal nonumber
autocmd TermOpen * setlocal norelativenumber
