#!/bin/sh

setxkbmap dvorak -option ctrl:nocaps
xrdb .Xdefaults
xbacklight -dec 40

export LANG="ja_JP.UTF-8"
export XMODIFIERS="@im=skkinput"
export GTK_IM_MODULE="xim"
export QT_IM_MODULE="xim"

if test ~/skkinput; then
    ~/skkinput &
fi
twm
