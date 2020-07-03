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
"Plug 'ajh17/VimCompletesMe'
Plug 'itchyny/lightline.vim'
"Plug 'vim-scripts/buftabs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/cmdalias.vim'
call plug#end()


" Status line
let g:lightline = {
      \ 'colorscheme': 'koi',
      \ }
" enable statusbar
set laststatus=2

" Wal
colorscheme wal

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
set nowrap
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
"ask to save if quit with unsaved changes
set confirm
set hidden

" Sloppy keybindings
set ignorecase
set smartcase
map ; :
autocmd VimEnter * Alias W w
autocmd VimEnter * Alias Q q
autocmd VimEnter * Alias WQ wq
autocmd VimEnter * Alias Wq wq
autocmd VimEnter * Alias wq wq

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
" nnoremap <C-S> :Rg<CR>
" search current git repo
" nnoremap <C-S> :PRg<CR> 

" Nerdtree
"map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'
"let NERDTreeShowHidden=1

"autocmd BufEnter * silent! lcd %:p:h
"autocmd InsertEnter,InsertLeave * set cul!

" " Vim coc
" set colors for tab menu ("highlights"/Pmenu)
highlight Pmenu ctermbg=magenta
highlight PmenuThumb ctermbg=gray
highlight CocHighlightWrite ctermbg=gray
" touch up other colors
highlight StatusLine ctermbg=gray
highlight CursorColumn ctermbg=gray
highlight PmenuSbar ctermbg=gray
highlight NvimInternalError ctermfg=black
highlight Error ctermbg=white
highlight CocListBgWhite ctermbg=white
highlight Color664499 ctermbg=magenta


" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Visual macro function
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
