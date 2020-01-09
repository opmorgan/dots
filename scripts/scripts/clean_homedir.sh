#!/usr/bin/env bash

mv $HOME/Downloads/* $HOME/temp/
mv $HOME/Desktop/* $HOME/temp/

/usr/bin/trash-put $HOME/Downloads
/usr/bin/trash-put $HOME/Desktop
