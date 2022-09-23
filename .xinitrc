#!/bin/sh

# base of the X settings
export DISPLAY=":0"
if test ${HOME}/.Xdefaults; then
	xrdb ${HOME}/.Xdefaults
fi

setxkbmap dvorak -option ctrl:nocaps
xbacklight -dec 60
xautolock -secure -locker "xtrlock -b" -time 5 &
# oneko -sakura -tofocus &
# oneko -tomoyo &

# input method
if test ~/skkinput; then
	~/skkinput &
	export XMODIFIERS="@im=skkinput"
	export GTK_IM_MODULE="xim"
	export QT_IM_MODULE="xim"
fi

# set your cute wallpaper here
if test ~/.desktop.png; then
	xloadimage -onroot -brighten 70 .desktop.png
fi

# kick the window manager 
twm
