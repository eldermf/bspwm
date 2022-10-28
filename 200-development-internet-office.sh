#!/bin/bash

###################################################
#												  #
# ==> Autor: Elder M. Fouraux                     #
#                                                 #
# ==> Descrição: video and files basic apps       #
#				(AGO/2022)						  #
###################################################

{
echo -e "Let's install the basic video and file reading packages. We can proceed? (y/N)?"
read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalling...\n"

		# Development
        sudo pacman -S  meld
        sudo pacman -S  geany
        sudo pacman -S  geany-plugins
        sudo pacman -S  visual-studio-code-bin
        yay -S pycharm-community-eap
        
        # Office
        sudo pacman -S  pdfarranger
        sudo pacman -S  zathura
        sudo pacman -S  zathura-djvu 
        sudo pacman -S  zathura-pdf-poppler 
        sudo pacman -S  zathura-ps 
        sudo pacman -S  zathura-cb
        sudo pacman -S  libreoffice-fresh-pt-br
        sudo pacman -S  java-runtime
        sudo pacman -S  java-environment
        sudo pacman -S  galculator
        
        # Internet
		sudo pacman -S  firefox-i18n-pt-br
		sudo pacman -S  discord 
		sudo pacman -S 	telegram-desktop
		sudo pacman -S  qbittorrent
                
    else
        sair
    fi
}

sair() {
    echo -e "\nGoing out...\n"
    exit 0
}
