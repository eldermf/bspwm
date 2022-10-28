#!/bin/bash

# encerra / inicia picom
if ! pidof picom; then
	notify-send "Compositor ativado! " --icon=/usr/share/icons/Papirus-Dark/16x16/actions/player-time.svg
	picom -b --experimental-backends --config $HOME/.config/picom.conf
	
else
	notify-send "Compositor desativado! " --icon=/usr/share/icons/Papirus-Dark/16x16/actions/media-stop.svg
	pkill picom	
fi
exit
