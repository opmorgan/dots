" Sloppy keybindings
set ignorecase
set smartcase
" map ; :
" Aliases using plugin: vim-scripts/cmdalias.vim
autocmd VimEnter * Alias W w
autocmd VimEnter * Alias Q q
autocmd VimEnter * Alias WQ wq
autocmd VimEnter * Alias Wq wq
autocmd VimEnter * Alias wq wq

" open help in a vertical split by default
:cabbrev h vert h

" shortcuts to switch windows
" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h
map <C-L> <C-W>l

" set f to ignore case
nmap f :call FindChar()<CR>
function FindChar()
  let c = nr2char(getchar())
  while col('.') < col('$') - 1
    normal l
    if getline('.')[col('.') - 1] ==? c
      break
    endif
  endwhile
endfunction

" Tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Buffers
noremap <S-M-H> :bprev<CR>
noremap <S-M-L> :bnext<CR>
nnoremap <C-B> :Buffers<CR>
nnoremap <C-F> :Files<CR>

" Code formatting
noremap = gg=G<C-o>zz

" Unset the "last search pattern" register by hitting return
" nnoremap <CR> :noh<CR><CR>

" Insert the current date and time
:nnoremap <F2> a<C-R>=strftime("%c")<CR><Esc>

" For R
:inoremap <M-S-m> %>% 
:inoremap <M--> <- 

