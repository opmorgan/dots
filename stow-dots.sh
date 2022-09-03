#! /usr/bin/env bash

FOLDERS_TO_STOW=""

for d in */ ; do
  FOLDERS_TO_STOW="$FOLDERS_TO_STOW ${d%/}"
done

if command -v stow 2>/dev/null
then
  if command -v git 2>/dev/null
  then
    echo "Deleting target configs that already exist in fresh larbs install..."
    stow --adopt bash st tabbed
    git restore .
    echo "Stowing configs: $FOLDERS_TO_STOW"
    stow $FOLDERS_TO_STOW --override=.bashrc --override=.bash_logout --override=config.h && echo "Done!"
  else

    echo "The command 'stow' could not be found. Exiting."
    exit
  fi
else
  echo "The command 'stow' could not be found. Exiting."
  exit
fi
