#!/bin/bash

###################################################
#												  #
# ==> Autor: Elder M. Fouraux                     #
#                                                 #
# ==> Descrição: video and files basic apps       #
#				(AGO/2022)						  #
###################################################

{
echo -e "Let's copy some basic configuration files.. We can proceed? (y/N)?"
read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalling...\n"

        sudo pacman -S --noconfirm --needed bspwm   # If you prefer picom-animations-git instead of picom-pijulius-git
        # yay -S bspwm-rounded-corners				 # And install with yay -->  picom-pijulius-git
        sudo pacman -S --noconfirm --needed sxhkd
        sudo pacman -S --noconfirm --needed polybar
        sudo pacman -S --noconfirm --needed rofi
        sudo pacman -S --noconfirm --needed dunst
        sudo pacman -S --noconfirm --needed lxappearance
        sudo pacman -S --noconfirm --needed dmenu
		sudo pacman -S --noconfirm --needed ksuperkey
		sudo pacman -S --noconfirm --needed nitrogen
		sleep 3
		
		echo -e "\nDon't forget to install cava...\n"
		sleep 2
      
    else
        sair
    fi
}

sair() {
    echo -e "\nGoing out...\n"
   
    exit 0
}
