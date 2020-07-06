" Sloppy keybindings
set ignorecase
set smartcase
map ; :
" Aliases using plugin: vim-scripts/cmdalias.vim
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

" Code formatting
noremap = gg=G

" Unset the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
