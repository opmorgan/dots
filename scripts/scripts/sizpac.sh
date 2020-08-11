#! /usr/bin/env bash

yay -Qi | gawk '/^Name/ { x = $3 }; /^Installed Size/ { sub(/Installed Size  *:/, ""); print x":" $0 }' | sort -k2,3nr
