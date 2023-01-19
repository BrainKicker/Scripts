#!bash

if pidof unclutter > /dev/null
then
	killall unclutter
else
	unclutter -idle 0 -root & disown
fi