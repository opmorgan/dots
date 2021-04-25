#! /usr/bin/env bash
cu(){ cut -d " " -f"$1" ;}

c(){ echo $(( ( ( $1 - $2 ) / 2 ) - $4 + $3 + $5)) ;}

getm(){
    echo $(
    wattr xywh $(
    xdo id -N Bspwm -n root -a "$(
    bspc query -M -n $wid --names)"))
}

wid=$(echo "$(pfw)" | tr "a-z" "A-Z")

# Quit if the focused window isn't floating
bspc query -N -n "${wid}.floating" || exit

b=$(bspc config border_width)
s=$(wattr xywh $wid)
m=$(getm)
bar_height=30

x="$(c $(echo $m | cu 3 ) \
    $(echo $s | cu 3 ) \
    $(echo $m | cu 1 ) \
    $b \
    0)"

y="$(c $(echo $m | cu 4 ) \
    $(echo $s | cu 4 ) \
    $(echo $m | cu 2 ) \
    $b \
    $bar_height)"

w=$(echo $s | cu 3)
h=$(echo $s | cu 4)

echo "window position/dimensions = "$w
echo "monitor position/dimensions = "$m
echo "border = "$b

echo  $mon_xywh | cu 3

echo "x = "$x
echo "y = "$y

wtp $x $y $w $h $wid

