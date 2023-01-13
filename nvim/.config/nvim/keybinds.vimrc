" Sloppy keybindings
set ignorecase
set smartcase

" Write a file with sudo
cmap w!! w !sudo tee %

" Aliases using plugin: vim-scripts/cmdalias.vim
autocmd VimEnter * Alias W w
autocmd VimEnter * Alias Q q
autocmd VimEnter * Alias WQ wq
autocmd VimEnter * Alias Wq wq
autocmd VimEnter * Alias wq wq

" open help in a vertical split by default
:cabbrev h vert h
:cabbrev help vert help

" map movement keys for wrapped text
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" map K to "opposite of J"
:map K 0i<CR><Esc>k

" shortcuts to switch split windows
nmap <C-j> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

" switch tabs
nmap gh gT
nmap gl gt

" close all buffers and tabs
nnoremap QQ :QuitTab<cr>
command! QuitTab call s:QuitTab()
function! s:QuitTab()
  try
    tabclose
  catch /E784/ " Can't close last tab
    qall
  endtry
endfunction

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
noremap <C-M-j> :bprev<CR>
noremap <C-M-k> :bnext<CR>
nnoremap <C-B> :Buffers<CR>
nnoremap <C-F> :Files<CR>

" Code formatting
noremap = gg=G<C-o>zz
" In Rmd files, use "=" to format all code chunks
" (By selecting all text from first code chunk delimeter to last)
" use "c=" to format curent chunk
" autocmd Filetype rmd noremap = /```<CR>ggnjV/```<CR>ggNk=<C-o><C-o><C-o>
" autocmd Filetype rmd noremap = /```<CR>ggnjV/```<CR>ggNk=/```<CR>ggn<CR>
autocmd Filetype rmd noremap = /```<CR>ggnjV/```<CR>ggNk=
" autocmd Filetype rmd noremap c= /```<CR>NjV/```<CR>k=<C-o><C-o>
autocmd Filetype rmd noremap c= /```<CR>NjV/```<CR>k=

" Remap paste so that copied text persists in register ""
xnoremap p pgvy
xnoremap P Pgvy

" Toggle auto_save
:cabbrev ast AutoSaveToggle

" Unset the "last search pattern" register by hitting escape
nnoremap <Esc> :noh<CR>

" Insert the current date and time
:nnoremap <F2> a<C-R>=strftime("%c")<CR><Esc>

" For R
:inoremap <M-S-m> <space>%>%
:inoremap <M-->  <space><-<space>
:inoremap <M-S-i> <Esc>0i```{r}<CR>```<ESC><S-o>
:nnoremap <M-S-i> 0i```{r}<CR>```<ESC><S-o>

"Set keybind for knitting rmd document, if not handled by Nvim-R
" " autocmd BufNewFile,BufFilePre,BufRead *.rmd,*.Rmd set filetype=rmd
" " I think filetype rmd is set by nvim-R
" autocmd Filetype rmd map <M-S-k> :!Rscript -e "rmarkdown::render('%')"<CR><CR>
" " to prompt for confirmation after knitting
" " autocmd Filetype rmd map <M-S-k> :!Rscript -e "rmarkdown::render('%')"<CR>

" from insert mode, backspace to end of previous line
" (Using "line join" command)
:nnoremap <F3> kJa
" TODO: figure out how to map this to
" shift + backspace in insert mode?
:inoremap <F3> <Esc>kJa
