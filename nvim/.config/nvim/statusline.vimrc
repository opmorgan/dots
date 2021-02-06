" This statusbar configuration was taken from:
" https://sidneyliebrand.io/blog/creating-my-own-vim-statusline

let g:mode_colors = {
      \ 'n':  'StatusLineSection',
      \ 'v':  'StatusLineSectionV',
      \ '': 'StatusLineSectionV',
      \ 'i':  'StatusLineSectionI',
      \ 'c':  'StatusLineSectionC',
      \ 'r':  'StatusLineSectionR'
      \ }

fun! StatusLineRenderer()
  let hl = '%#' . get(g:mode_colors, tolower(mode()), g:mode_colors.n) . '#'

  return hl
        \ . (&modified ? ' + │' : '')
        \ . ' %{StatusLineFilename()} %#StatusLine#%='
        \ . hl
        \ . ' %l:%c '
endfun

fun! StatusLineFilename()
  if (&ft ==? 'netrw') | return '*' | endif
  return substitute(expand('%'), '^' . getcwd() . '/\?', '', 'i')
endfun

fun! <SID>StatusLineHighlights()
  hi StatusLine         cterm=reverse  
  hi StatusLineNC       ctermbg=8  ctermfg=0 
  hi StatusLineSection  ctermbg=4  ctermfg=0
  hi StatusLineSectionV ctermbg=3 ctermfg=0
  hi StatusLineSectionI ctermbg=2 ctermfg=0
  hi StatusLineSectionC ctermbg=1 ctermfg=0
  hi StatusLineSectionR ctermbg=1 ctermfg=0
endfun

call <SID>StatusLineHighlights()

" only set default statusline once on initial startup.
" ignored on subsequent 'so $MYVIMRC' calls to prevent
" active buffer statusline from being 'blurred'.
if has('vim_starting')
  let &statusline = ' %{StatusLineFilename()}%= %l:%c '
endif

augroup vimrc
  au!
  " show focussed buffer statusline
  au FocusGained,VimEnter,WinEnter,BufWinEnter *
    \ setlocal statusline=%!StatusLineRenderer()

  " show blurred buffer statusline
  au FocusLost,VimLeave,WinLeave,BufWinLeave *
    \ setlocal statusline&

  " restore statusline highlights on colorscheme update
  au Colorscheme * call <SID>StatusLineHighlights()atusline&
augroup END
