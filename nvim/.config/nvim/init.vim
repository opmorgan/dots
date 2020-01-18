" load plugins with Plugged
call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-vinegar'
"Plug 'gko/vim-coloresque'
"Plug 'ap/vim-css-color'
Plug 'lilydjwg/colorizer'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'Yggdroot/indentLine'
"Plug 'kien/ctrlp.vim'
"Plug 'posva/vim-vue'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'leafgarland/typescript-vim'
Plug 'w0rp/ale'
Plug 'posva/vim-vue'
Plug 'jalvesaq/Nvim-R'
"Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html', 'vue'] }
call plug#end()

" wal
colorscheme wal

" colorizer
let g:colorizer_maxlines = 1000

" ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '∙ '
let g:ale_sign_warning = '! '
" highlight ALEErrorSign ctermfg=yellow
" highlight ALEWarningSign ctermfg=blue
let g:ale_set_highlights = 0

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" vim
syntax enable

set noswapfile
"set nowrap
set laststatus=0
set noshowmode
set noshowcmd
set noruler
set list
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set clipboard=unnamedplus
set hidden
set mouse=a
set number
set title

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

autocmd BufEnter * silent! lcd %:p:h
autocmd InsertEnter,InsertLeave * set cul!

hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE
hi VertSplit	cterm=NONE ctermbg=NONE ctermfg=NONE
hi TabLineFill cterm=none ctermfg=cyan  ctermbg=none
hi TabLine     cterm=none ctermfg=cyan ctermbg=none
hi TabLineSel  cterm=none ctermfg=black ctermbg=cyan

"" from Josh's config:
"let delimitMate_expand_cr = 1
"let delimitMate_expand_space = 1
"
"let g:vue_disable_pre_processors=1
"
"autocmd FileType vue syntax sync fromstart
"autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.less.pug

