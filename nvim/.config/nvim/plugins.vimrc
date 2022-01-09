"" Wal
colorscheme wal
"" change error color
hi Error ctermfg=black ctermbg=magenta

"" Tcomment

"" Status line
"
" let g:lightline = {
"       \ 'colorscheme': 'koi',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'readonly', 'filename', 'gitbranch', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'fileformat': 'LightlineFileformat',
"       \   'filetype': 'LightlineFiletype',
"       \   'gitbranch': 'gitbranch#name',
"       \ },
"       \ 'component': {
"       \   'lineinfo': '%3l:%-2v%<',
"       \ },
"       \ }

" make the statusline thinner
" function! LightlineFileformat()
"   return winwidth(0) > 70 ? &fileformat : ''
" endfunction
"
" function! LightlineFiletype()
"   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
" endfunction

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
let g:ale_fixers = {'rmd': ['styler']}
let g:ale_fixers = {'r': ['styler']}
let g:ale_r_lintr_lint_package = 0
" for r linting, install the coc-nvim extension:
" CocInstall coc-r-lsp
" dep: in R, install.packages('languageserver')

"" fzf-vim
"
" GFiles, Rg
nnoremap <C-P> :GFiles<CR>
" command! -bang -nargs=* PRg \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)
nnoremap <C-S> :Rg<CR>
" search current git repo
" nnoremap <C-S> :PRg<CR>


"" Vim coc
"
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
highlight CocRustTypeHint ctermbg=magenta ctermfg=black

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

" tab completion
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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

"" Nvim-R
"
" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1
" R commands in R output are highlighted
let g:Rout_more_colors = 1

" disable <- remapping
let R_assign = 0

" Start R automatically when opening an R file
" 1 = start when you load an R script when starting vim
" 2 = start r automatically when you start editing an R script (could this be
" causing the problem that R restarts every time I enter input mode as of Jan
" 9 2022?
let R_auto_start = 1

" remap send line/chunk
nmap <M-CR> <Plug>RDSendLine
inoremap <M-CR> <Esc>:call SendLineToR("stay")<CR><Down><Home>i
vmap <M-CR> <Plug>RDSendSelection
nmap <M-c> <Plug>RDSendChunk

" remap chunk running
" nmap <LocalLeader>cc <Plug>RSendChunk
nmap <LocalLeader>cc <Plug>RESendChunk
" nmap <LocalLeader>cd <Plug>RDSendChunk
nmap <LocalLeader>cd <Plug>REDSendChunk
nmap <LocalLeader>ch <Plug>RSendChunkFH

" remap start linked r console
nmap <LocalLeader>rf <Plug>RStart
vmap <LocalLeader>rf <Plug>RStart

" remap knit
nmap <M-S-k> <Plug>RMakeRmd

" remap jump to next chunk
nmap <M-j> <Plug>RNextRChunk
nmap <M-k> <Plug>RPreviousRChunk

" open r quietly, don't save workspace
let R_args = ['--no-save', '--quiet']

" control when console opens in a vertical split window
let R_rconsole_width = 70
let R_min_editor_width = 45

"set default width of r console window
let R_rconsole_width = winwidth(0) / 3
autocmd VimResized * let R_rconsole_width = winwidth(0) / 3

"highlight header chunks as R code
let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1

"do not open pdf/html after knitting
let R_openpdf = 1
let R_openhtml = 0


"" bbye
nnoremap <Leader>q :Bdelete<CR>

"" vimtex / latex
" let g:vimtex_view_method = 'zathura'
" let g:tex_indent_items=0
" let g:tex_indent_and=0
" let g:tex_indent_brace=0


" arara
" let g:tex_flavor='arara'
" let g:Tex_DefaultTargetFormat='pdf'
" " https://tex.stackexchange.com/questions/83715/biber-backend-and-vim-latex
" let g:Tex_BibtexFlavor = 'biber'
" " The following is relevant to make LaTeX rerun after biber if necessary:
" " (include all formats for which re-running is to be enabled)
" let g:Tex_MultipleCompileFormats='pdf'


"" fff
" Open fff on press of 'f'
nnoremap F :F<CR>
let g:fff#split = "100new"
