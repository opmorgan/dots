" " insert closing brackets automatically if you are at the end of a line
" function! ConditionalPairMap(open, close)
"   let line = getline('.')
"   let col = col('.')
"   if col < col('$') || stridx(line, a:close, col + 1) != -1
"     return a:open
"   else
"     return a:open . a:close . repeat("\<left>", len(a:close))
"   endif
" endf
" inoremap <expr> { ConditionalPairMap('{', '}')
" " inoremap <expr> ( ConditionalPairMap('(', ')')
" " inoremap <expr> [ ConditionalPairMap('[', ']')
"
" " put closing brackets on new line if opening bracket is followed by return
" inoremap {<CR>  {<CR>}<Esc>O
"
" " do nothing for {}
" inoremap {} {}
"
" " force single bracket by entering twice
" inoremap {{ {
