" Recompile suckless programs automatically
autocmd BufWritePost config.h,config.def.h !sudo make install

" Run xrdb whenever Xdefaults or Xresources are updated
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Automatically delete all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

au BufReadPost *.css.ts set syntax=css
