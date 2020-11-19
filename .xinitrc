#!/bin/sh

LOCAL_IP_ADDR=`cat /etc/resolv.conf | grep nameserver | cut -d ' ' -f 2`
export DISPLAY=${LOCAL_IP_ADDR}:0.0
export LANG="ja_JP.UTF-8"
export XMODIFIERS="@im=skkinput"
export GTK_IM_MODULE="xim"
export QT_IM_MODULE="xim"

setxkbmap dvorak -option ctrl:nocaps
xrdb .Xdefaults
# xbacklight -dec 60
# oneko -sakura -tofocus &
# oneko -tomoyo &

if test ~/skkinput; then
	yaskkserv_simple /usr/share/yaskkserv/SKK-JISYO.L.yaskkserv
	~/skkinput &
fi

if test ~/.desktop.jpg; then
	xloadimage -onroot -center .desktop.jpg
fi

twm &
