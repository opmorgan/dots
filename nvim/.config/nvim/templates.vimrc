if has("autocmd")
  augroup templates
    " load template to new files based on extension
    autocmd BufNewFile *.* silent!
          \ execute '0r 
          \$HOME/.config/nvim/templates/skel.'.expand("<afile>:e")
  augroup END
endif
