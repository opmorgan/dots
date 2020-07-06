" Load plugins with vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin()

" pywal colors
Plug 'dylanaraps/wal.vim'

" navigation
Plug 'tpope/vim-vinegar'
"Plug 'preservim/nerdtree'
"Plug 'vim-scripts/buftabs'

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

" keypress aliases
Plug 'vim-scripts/cmdalias.vim'

" hex color code highlighting
Plug 'lilydjwg/colorizer'

call plug#end()