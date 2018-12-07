call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-vinegar'
Plug 'rust-lang/rust.vim'
Plug 'w0rp/ale'
Plug 'racer-rust/vim-racer'
Plug 'lervag/vimtex'
call plug#end()

colorscheme wal

let g:ale_set_highlights = 0
let g:ale_linters = {'rust': ['rls']}
let g:ale_completion_enabled = 1

syntax enable

set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:..,trail:_,extends:>,precedes:<,nbsp:~
set list
set number
set autochdir
set clipboard=unnamedplus
set noswapfile
set mouse=a
set nowrap
