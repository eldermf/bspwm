#!/bin/bash

###################################################
#												  #
# ==> Autor: Elder M. Fouraux                     #
#                                                 #
# ==> Descrição: video and files basic apps       #
#				(OUT/2022)						  #
###################################################

{
echo -e "Let's copy some basic configuration files. We can proceed? (y/N)?"
read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalling...\n"

        cd home/
        ls -la
        sleep 6
        sudo cp -r .bashrc .vimrc .Xresources .zshrc $HOME/
        sleep 3
        ls -la 
        sleep 6
        sudo cp -r .cache .config .fonts .icons. .mpd .ncmpcpp. .oh-my-zsh .screenlayout .themes .vim_runtime $HOME/
		       
    else
        sair
    fi
}

sair() {
    echo -e "\nDo it Log out NOW...\n"
    exit 0
}
