" " Vim coc settings
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
