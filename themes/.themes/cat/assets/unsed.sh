#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#b1bcbd/g' \
         -e 's/rgb(100%,100%,100%)/#070F0D/g' \
    -e 's/rgb(50%,0%,0%)/#070F0D/g' \
     -e 's/rgb(0%,50%,0%)/#616D69/g' \
 -e 's/rgb(0%,50.196078%,0%)/#616D69/g' \
     -e 's/rgb(50%,0%,50%)/#b1bcbd/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#b1bcbd/g' \
     -e 's/rgb(0%,0%,50%)/#070F0D/g' \
	$@