" Load plugins with vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin()

" pywal colors
Plug 'dylanaraps/wal.vim'

" navigation
Plug 'tpope/vim-vinegar'
" Plug 'preservim/nerdtree'
"Plug 'vim-scripts/buftabs'

" editing
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim', {'branch': 'master'}

" statusbar
Plug 'itchyny/lightline.vim'

" LSP, autocompletion, linting, +
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'

" multi-file search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" language-specific
Plug 'jalvesaq/Nvim-R'
Plug 'posva/vim-vue'
" Plug 'LucHermitte/lh-vim-lib'
" Plug 'LucHermitte/lh-style'
" Plug 'LucHermitte/lh-brackets'

" keypress aliases
Plug 'vim-scripts/cmdalias.vim'

" hex color code highlighting
Plug 'lilydjwg/colorizer'

call plug#end()
