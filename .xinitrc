#!/bin/sh

setxkbmap dvorak -option ctrl:nocaps
xrdb .Xdefaults
xbacklight -dec 60
xscreensaver &
# oneko -sakura -tofocus &
# oneko -tomoyo &

export LANG="ja_JP.UTF-8"
export XMODIFIERS="@im=skkinput"
export GTK_IM_MODULE="xim"
export QT_IM_MODULE="xim"

if test ~/skkinput; then
    ~/skkinput &
fi

if test ~/.desktop.png; then
   xloadimage -onroot -smooth -brighten 50 .desktop.png
fi

twm
