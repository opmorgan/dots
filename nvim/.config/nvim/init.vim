call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-vinegar'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'
Plug 'posva/vim-vue'
Plug 'hail2u/vim-css3-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html', 'vue'] }
call plug#end()


" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

syntax enable
set noswapfile
set nowrap
colorscheme wal

set laststatus=0
set noshowmode
set noshowcmd
set noruler
set list
set tabstop=2 shiftwidth=2 expandtab
set autoindent

set clipboard=unnamedplus

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

autocmd BufEnter * silent! lcd %:p:h

hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE
hi VertSplit	cterm=NONE ctermbg=NONE ctermfg=NONE
hi TabLineFill cterm=none ctermfg=cyan  ctermbg=none
hi TabLine     cterm=none ctermfg=cyan ctermbg=none
hi TabLineSel  cterm=none ctermfg=black ctermbg=cyan

let g:ale_sign_column_always = 1

let g:ale_sign_error = '∙ '
let g:ale_sign_warning = '! '

highlight ALEErrorSign ctermfg=yellow
highlight ALEWarningSign ctermfg=blue

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.less.pug

