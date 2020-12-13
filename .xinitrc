#!/bin/sh

LOCAL_IP_ADDR=`cat /etc/resolv.conf | grep nameserver | cut -d ' ' -f 2`
export DISPLAY=${LOCAL_IP_ADDR}:0.0

setxkbmap dvorak -option ctrl:nocaps
if test ${HOME}/.Xdefaults; then
	xrdb ${HOME}/.Xdefaults
fi

# input method
export LANG="ja_JP.UTF-8"
if test ~/skkinput; then
	yaskkserv_simple /usr/share/yaskkserv/SKK-JISYO.L.yaskkserv
	~/skkinput &
	export XMODIFIERS="@im=skkinput"
	export GTK_IM_MODULE="xim"
	export QT_IM_MODULE="xim"
fi

# set your cute wallpaper here
if test ~/.desktop.jpg; then
	xloadimage -onroot -center .desktop.jpg
fi

# kick the terminal 
xterm -e screen -D -R -S default &
