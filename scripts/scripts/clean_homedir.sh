#!/usr/bin/env bash

for FOLDER in $HOME/Downloads $HOME/Desktop
do
  if test -e "$FOLDER"; then
    # check if it has any contents
    if [ "$(ls -A "$FOLDER")" ]; then
      # if it does, move them, then delete folder
      mv $FOLDER/* $HOME/temp/
      /usr/bin/trash-put "$FOLDER"
    else 
      # if it doesn't, just delete folder
      /usr/bin/trash-put "$FOLDER"
    fi
  fi
done
