#! /usr/bin/env bash

# TODO: accept arguments indicating which module to stow from
# TODO: handle overwriting, dependendcies when stowing modules with dependencies (should automatically gather names of files that would be stowed with submodules, and add them to the overwrite list)

# (1) Specify target directory, and source directory that can contain modules
DOTS_SOURCE_DIR="$HOME/src/stow-sandbox/dots"
# For development, hardcode target directory to stow to
DOTS_TARGET_DIR="$HOME/src/stow-sandbox/put-dots-here"
# For production (user can override):
# TARGET_DIR=$HOME

echo "Source module: $MODULE"
echo "Source module directory: $SOURCE_MODULE_DIR"
echo "Target directory: $DOTS_TARGET_DIR"


## Initialize space-separated list of packages to stow
PACKAGES_TO_STOW=""

echo "Testing new deploy function..."


## Hardcode for testing -- will be a user-supplied argument
MODULE="base"
PACKAGES_TO_STOW="bash bspwm"
deploy() {
  ## This function can take:
  ## no arguments (will deploy every module specified in config.toml)
  ## two or more arguments (model, package1, package2.
  ##    Will deploy the supplied packages.
  ## with the modules flag (--modules; -m)
  ## one or more arguments (will deploy the supplied modules)

  ## if no --modules flag, stow config "package" from given module
  ## e.g., "deploy base bswpm" should stow bspwm from the folder base.

  echo "MODULE: $MODULE"
  echo "PACKAGES_TO_STOW: $PACKAGES_TO_STOW"
  echo "Entering function Stow_from_module()"
  stow_from_module $MODULE $PACKAGES_TO_STOW

  ## todo: if --modules flag, deploy all symlinks in the given modules
  ## todo: if no arguments, deploy all symlinks in the modules specified in config.toml
  echo "This is the end of the deploy () function."
}

stow_from_module() {
  ## Stows dotfiles files from a specified module folder
  ## Arguments:
  ##   module
  ##     (path to a module that contains a dotfile package
  ##     (e.g., the folder "bwpsm", relative to directory where the command is run)
  ##   package (the name of the dotfile package)
  ##   #TODO add as an argument to this function: --target_dir
  ##     (directory in which to stow the package. Default: $HOME)
  echo "Deploying dotfiles [$MODULE/ $PACKAGES_TO_STOW] to destination: $DOTS_TARGET_DIR"
  # echo "Source module: $MODULE"
  echo "Source module: $1"

  ## todo: build the source dir from $DOTS_SOURCE_DIR (dots/) + arg1 (base) + arg 2 (bspwm).
  SOURCE_MODULE_DIR="$DOTS_SOURCE_DIR/$MODULE"
  echo "Source module directory: $SOURCE_MODULE_DIR"
  echo "Package(s) to stow: $PACKAGES_TO_STOW"
  echo "Target directory: $DOTS_TARGET_DIR"

  ## Clean up existing files, in a hacky way (adopt them, restore git repo)
  ## Cleaning is needed so that modules can overwrite files from others
  ## consider also: adding override for every file in source path
  ## Can I just use "--override=*"?
  ## TODO: add this with a warning, prompt confirmation
  # stow --adopt $PACKAGES_TO_STOW --dir=$SOURCE_MODULE_DIR --target=$DOTS_TARGET_DIR
  # git restore .

  if command -v stow 2>/dev/null
  then
    if command -v git 2>/dev/null
    then
      ## Stow the package
      stow --dir=$SOURCE_MODULE_DIR --target=$DOTS_TARGET_DIR $PACKAGES_TO_STOW && echo "Done!"
    else

      echo "The command 'stow' could not be found. Exiting."
      exit
    fi
  else
    echo "The command 'stow' could not be found. Exiting."
    exit
  fi
  echo "This is the end of the stow_from_module() function."
}

deploy

echo "Done!"

## To find all packages in supplied module
## (Should loop through all supplied modules)
for d in $SOURCE_MODULE_DIR/*/ ; do
  BASENAME=$(basename "$d")
  PACKAGES_TO_STOW="$PACKAGES_TO_STOW ${BASENAME}"
done
