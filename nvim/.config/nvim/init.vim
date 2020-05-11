" Load plugins with Plugged
call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-vinegar'

"Plug 'gko/vim-coloresque'
"Plug 'ap/vim-css-color'
Plug 'lilydjwg/colorizer'

" From Josh's Config
"Plug 'terryma/vim-multiple-cursors'
"Plug 'Yggdroot/indentLine'
"Plug 'kien/ctrlp.vim'
"Plug 'posva/vim-vue'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'leafgarland/typescript-vim'
"Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html', 'vue'] }

Plug 'w0rp/ale'
Plug 'posva/vim-vue'
Plug 'jalvesaq/Nvim-R'
" Plug 'ajh17/VimCompletesMe'
Plug 'itchyny/lightline.vim'
" Plug 'vim-scripts/buftabs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'preservim/nerdtree'
call plug#end()


" Status line
let g:lightline = {
      \ 'colorscheme': 'koi',
      \ }
" enable statusbar
set laststatus=2

" Wal
" colorscheme wal
" highlighting color
" set termguicolors

" Colorizer
let g:colorizer_maxlines = 1000

" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '∙ '
let g:ale_sign_warning = '! '
" highlight ALEErrorSign ctermfg=yellow
" highlight ALEWarningSign ctermfg=blue
let g:ale_set_highlights = 0

" Tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" Vim
syntax enable
set noswapfile
"set nowrap
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
" relative line numbers
set nu rnu 

" Tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Buffers
noremap <S-H> :bprev<CR>
noremap <S-L> :bnext<CR>
nnoremap <C-B> :Buffers<CR>
nnoremap <C-F> :Files<CR>

" code formatting
noremap = gg=G

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" GFiles, Rg 
nnoremap <C-P> :GFiles<CR>
" command! -bang -nargs=* PRg \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)
nnoremap <C-S> :Rg<CR>
" search current git repo
" nnoremap <C-S> :PRg<CR> 

" Nerdtree
"map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'
"let NERDTreeShowHidden=1

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

