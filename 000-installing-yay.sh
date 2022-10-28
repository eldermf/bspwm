#!/bin/bash

###################################################
#												                          #
# ==> Autor: Elder M. Fouraux                     #
#                                                 #
# ==> Descrição: yay install                      #
#				(JUL/2022)						                    #
###################################################

{
echo -e "Let's install YAY. We can proceed? (y/N)?"
read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalling...\n"

        sudo pacman -Syyu --noconfirm --needed
        sudo pacman -S --noconfirm --needed git
        sudo pacman -S --noconfirm --needed go
		sleep 1

		git clone https://aur.archlinux.org/yay.git
		sleep 0.5
		cd yay
		sleep 0.5
		makepkg -si
		echo -e "YAY installed now."

else
		sair
    fi
}

sair() {
    echo -e "\nGoing out...\n"
    exit 0
}
