#! /usr/bin/env bash

# TODO: accept arguments indicating which module to stow from
# TODO: handle overwriting, dependendcies when stowing modules with dependencies (should automatically gather names of files that would be stowed with submodules, and add them to the overwrite list)
# TODO: add "stow replacement" function that lets you stow a specific dotfile from a specified module

FOLDERS_TO_STOW=""

# TODO: create this path dynamically (letting user specify module)
DOTS_SOURCE_DIR=$HOME/src/stow-sandbox/dots/base
DOTS_SOURCE_DIR_RELATIVE=base

# For development, hardcode directory to stow to
DOTS_TARGET_DIR=$HOME/src/stow-sandbox
# For production (user can override):
# TARGET_DIR=$HOME

for d in $DOTS_SOURCE_DIR_RELATIVE/*/ ; do
  BASENAME=$(basename "$d")
  FOLDERS_TO_STOW="$FOLDERS_TO_STOW ${BASENAME}"
  # FOLDERS_TO_STOW="$FOLDERS_TO_STOW ${d%/}"
done

if command -v stow 2>/dev/null
then
  if command -v git 2>/dev/null
  then
    echo "Deleting target configs that already exist in fresh larbs install..."

    ## Commented out for development
    # stow --adopt bash st tabbed
    # git restore .

    echo "Stowing configs: $FOLDERS_TO_STOW"
    echo "Dots source dir: $DOTS_SOURCE_DIR"
    echo "Dots target dir: $DOTS_TARGET_DIR"

    ## This command, run from the dots folder, works:
    # stow --dir=base --target=../ dwarffortress

    ## Commented out for development
    stow --dir=$DOTS_SOURCE_DIR --target=$DOTS_TARGET_DIR $FOLDERS_TO_STOW --override=.bashrc --override=.bash_logout --override=config.h && echo "Done!"

    ## This command will unstow everything
    # stow --dir=$DOTS_SOURCE_DIR --target=$DOTS_TARGET_DIR --delete $FOLDERS_TO_STOW --override=.bashrc --override=.bash_logout --override=config.h && echo "Done!"


  else

    echo "The command 'stow' could not be found. Exiting."
    exit
  fi
else
  echo "The command 'stow' could not be found. Exiting."
  exit
fi

