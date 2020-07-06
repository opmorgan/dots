" organization inspired by:
" https://www.gregjs.com/vim/2016/do-yourself-a-favor-and-modularize-your-vimrc-init-vim/

source $HOME/.config/nvim/init.vimrc
source $HOME/.config/nvim/general.vimrc

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

