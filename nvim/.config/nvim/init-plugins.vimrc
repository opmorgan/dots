"" Load plugins with vim-plug
"" https://github.com/junegunn/vim-plug
call plug#begin()

"" Pywal colors
Plug 'dylanaraps/wal.vim'

"" Navigation
Plug 'tpope/vim-vinegar'
Plug 'dylanaraps/fff.vim'
Plug 'moll/vim-bbye'
" Plug 'justinmk/vim-sneak'

"" Editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-easyclip'
Plug 'tomtom/tcomment_vim', {'branch': 'master'}

"" LSP, autocompletion, linting, +
"" TODO: switch to native LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'github/copilot.vim'

"" Multi-file search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Function to get git branch
Plug 'itchyny/vim-gitbranch'

" Language/filetyle specific
Plug 'jalvesaq/Nvim-R'
" Trying to fix Rmd syntax highlighting:
" https://github.com/jalvesaq/Nvim-R/issues/197
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'posva/vim-vue'
Plug 'lervag/vimtex'
Plug 'm-pilia/vim-pkgbuild'
" Plug 'xuhdev/vim-latex-live-preview'
" Plug 'goballooning/vim-live-latex-preview'
"" Autosave, for latex livepreviewing with vimtex
Plug '907th/vim-auto-save'

"" Keypress aliases
Plug 'vim-scripts/cmdalias.vim'

"" Hex color code highlighting
Plug 'lilydjwg/colorizer'

call plug#end()
