#!/bin/sh
sed -i \
         -e 's/#cac2bb/rgb(0%,0%,0%)/g' \
         -e 's/#272124/rgb(100%,100%,100%)/g' \
    -e 's/#272124/rgb(50%,0%,0%)/g' \
     -e 's/#B58A6E/rgb(0%,50%,0%)/g' \
     -e 's/#cac2bb/rgb(50%,0%,50%)/g' \
     -e 's/#272124/rgb(0%,0%,50%)/g' \
	$@
