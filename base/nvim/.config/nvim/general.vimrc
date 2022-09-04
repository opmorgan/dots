" Vim settings

syntax enable

set noswapfile
set wrap
set linebreak " visual break at special characters only
set list
set tabstop=2 shiftwidth=2 expandtab " use spaces
set autoindent
set clipboard=unnamedplus
set hidden
set mouse=a
set title

" Height of minimized files
set wmh=0

" Relative line numbers
set number rnu

"ask to save if quit with unsaved changes
set confirm
set hidden

" From vim-sensible
set backspace=indent,eol,start
" set complete-=i
set smarttab
set autoread
if !&scrolloff
  set scrolloff=3
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

" Split window below/right when creating horizontal/vertical windows
set splitbelow splitright

" No gutter numbers in terminal buffers
autocmd TermOpen * setlocal nonumber
autocmd TermOpen * setlocal norelativenumber

" Highlight trailing spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Set terminal to default to insert mode
" https://github.com/neovim/neovim/issues/8816
if has('nvim')
    autocmd TermOpen term://* startinsert
endif
" let g:previous_window = -1
" function SmartInsert()
"   if &buftype == 'terminal'
"     if g:previous_window != winnr()
"       startinsert
"     endif
"     let g:previous_window = winnr()
"   else
"     let g:previous_window = -1
"   endif
" endfunction
"
" au BufEnter * call SmartInsert()
