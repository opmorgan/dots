#! /usr/bin/env bash

# title: copy_without_linebreaks
# author: Glutanimate (github.com/glutanimate)
# modifier: Siddharth (github.com/SidMan2001)
# license: MIT license

# secondary source: https://superuser.com/questions/796292/is-there-an-efficient-way-to-copy-text-from-a-pdf-without-the-line-breaks

# Parses currently selected text and removes 
# newlines

while $HOME/scripts/copy_without_linebreaks/clipnotify;
do
  SelectedText="$(xsel)"
  CopiedText="$(xsel -b)"
  if [[ $SelectedText != *"file:///"* ]]; then
    ModifiedTextPrimary="$(echo "$SelectedText" | tr -s '\n' ' ')"
    echo -n "$ModifiedTextPrimary" | xsel -i
  fi
  if [[ $CopiedText != *"file:///"* ]]; then
    ModifiedTextClipboard="$(echo "$CopiedText" | tr -s '\n' ' '  )"
    echo -n "$ModifiedTextClipboard" | xsel -bi
  fi
done

