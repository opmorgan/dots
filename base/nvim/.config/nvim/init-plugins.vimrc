"" Load plugins with vim-plug
"" https://github.com/junegunn/vim-plug
"" Install with :PlugInstall
"" Update with :PlugUpdate
"" Clean unused with PlugClean
"" Update vim-plug with PlugUpgrade
call plug#begin()

"" Colors
"" Pywal colors
Plug 'dylanaraps/wal.vim'
"" Zenburn theme
"Plug 'phha/zenburn.nvim'

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
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
" Plug 'github/copilot.vim'

"" Jan 7 2023: switch to native LSP
Plug 'williamboman/mason.nvim',
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig' " Must source after mason
"" Recommended dependencies for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'
" ""But, use luasnip instead of vsnip.

Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'


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
" Plug 'm-pilia/vim-pkgbuild'
" Plug 'xuhdev/vim-latex-live-preview'
" Plug 'goballooning/vim-live-latex-preview'
"" Autosave, for latex livepreviewing with vimtex
Plug '907th/vim-auto-save'
"" Highlighting for django templates
Plug 'tweekmonster/django-plus.vim'
" Plug 'vim-scripts/django.vim'

"" Keypress aliases
Plug 'vim-scripts/cmdalias.vim'

"" Hex color code highlighting
Plug 'lilydjwg/colorizer'

call plug#end()
