"" Wal
colorscheme wal

"" Tcomment


"" Status line
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'component_function': {
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \ },
      \ }

" make the statusline thinner
function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

" enable statusbar
set laststatus=2

"" Colorizer
let g:colorizer_maxlines = 1000

"" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '∙ '
let g:ale_sign_warning = '! '
" highlight ALEErrorSign ctermfg=yellow
" highlight ALEWarningSign ctermfg=blue
let g:ale_set_highlights = 0


"" Nerdtree
"map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'
"let NERDTreeShowHidden=1

"autocmd BufEnter * silent! lcd %:p:h
"autocmd InsertEnter,InsertLeave * set cul!

"" fzf-vim
" GFiles, Rg 
nnoremap <C-P> :GFiles<CR>
" command! -bang -nargs=* PRg \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)
" nnoremap <C-S> :Rg<CR>
" search current git repo
" nnoremap <C-S> :PRg<CR> 


"" Vim coc
" set colors for tab menu ("highlights"/Pmenu)
highlight Pmenu ctermbg=magenta
highlight Pmenu ctermfg=black
highlight PmenuThumb ctermbg=gray
highlight CocHighlightWrite ctermbg=green
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

" gd - go to definition of word under cursor
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" gi - go to implementation
nmap <silent> gi <Plug>(coc-implementation)

" gr - find references
nmap <silent> gr <Plug>(coc-references)

" gh - get hint on whatever's under the cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


