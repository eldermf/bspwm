#!/bin/bash

###################################################
#												  #
# ==> Autor: Elder M. Fouraux                     #
#                                                 #
# ==> Descrição: video and files basic apps       #
#				(AGO/2022)						  #
###################################################

{
echo -e "Let's install Neovim NvChad. We can proceed? (y/N)?"
read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalling...\n"

        rm -rf ~/.config/nvim
		rm -rf ~/.local/share/nvim
		rm -rf ~/.cache/nvim
        sudo pacman -S --noconfirm --needed vim 
        sudo pacman -S --noconfirm --needed vim-runtime
        #sudo pacman -S --noconfirm --needed vim-airline
        #sudo pacman -S --noconfirm --needed vim-airline-themes
        sudo pacman -S --noconfirm --needed neovim		
        sleep 3
        mkdir -p ~/.config/nvim
        git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
    else
        sair
    fi
}

sair() {
    echo -e "\nDo it! Log out NOW...\n"
    exit 0
}
