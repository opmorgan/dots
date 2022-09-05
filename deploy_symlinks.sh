#! /usr/bin/env bash

## Plan
## In each module, have a script that symlinks config files to appropriate paths, creating folders if needed (prompt user with a warning). The destination directory should draw from an env variable, $DOTS_TARGET_DIR.
## A script, deploy.sh, at the top level, should enable you to:
## deploy --modules base pons theme-joel
##   (deploy all modules from base, then pons)
## deploy base bspwm
##   (deploy dot package (stow lingo) bswpm from the module base, according to the script in base/bspwm/make-symlinks.sh
## make_symlinks.sh should specify the appropriate symlink paths for each fdile int he directory, referring to the target directory with an env variable $DOTS_TARGET_DIR, and building the source dir from $DOTS_SOURCE_DIR (dots/) + arg1 (base) + arg 2 (bspwm).
## show warnings and prompt for confirmation if:
## a symlink needs to create a new folder
## a symlink needs to overwrite an existing file.

deploy () {
  ## if no --modules flag,
  ## todo: if --modules flag, deploy all symlinks in the given modules
  ## todo: if no arguments, deploy all symlinks in the modules specified in config.toml
  echo "test"
}

