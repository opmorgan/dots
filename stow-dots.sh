#! /usr/bin/env bash

FOLDERS_TO_STOW=""

for d in */ ; do
  FOLDERS_TO_STOW="$FOLDERS_TO_STOW ${d%/}"
done

if command -v stow 2>/dev/null
then
  echo "Stowing configs: $FOLDERS_TO_STOW"
  stow $FOLDERS_TO_STOW && echo "Done!"
else
  echo "The command 'stow' could not be found. Exiting."
  exit
fi
