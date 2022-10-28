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

        sudo pacman -S --noconfirm --needed xf86-video-amdgpu  # this is my graphics card
        # sudo pacman -S --noconfirm --needed xf86-video-intel
        # sudo pacman -S --noconfirm --needed xf86-video-nouveau
        sudo pacman -S --noconfirm --needed xf86-video-fbdev
        sudo pacman -S --noconfirm --needed xf86-video-qxl
        sudo pacman -S --noconfirm --needed xorg-server
        sudo pacman -S --noconfirm --needed xorg-xinit
        sudo pacman -S --noconfirm --needed xorg-xrandr
        sudo pacman -S --noconfirm --needed xorg-xkill
        sudo pacman -S --noconfirm --needed xorg-xset
        sudo pacman -S --noconfirm --needed xorg-xsetroot
        sudo pacman -S --noconfirm --needed xorg-fonts-misc
		sudo pacman -S --noconfirm --needed xclip
		sudo pacman -S --noconfirm --needed xcb-util
		sudo pacman -S --noconfirm --needed xcb-util-wm		
		sudo pacman -S --noconfirm --needed xcb-util-keysyms
		sudo pacman -S --noconfirm --needed xcb-util-cursor
		sudo pacman -S --noconfirm --needed xdotool
		sudo pacman -S --noconfirm --needed libxcb
		sudo pacman -S --noconfirm --needed dosfstools
		sudo pacman -S --noconfirm --needed os-prober
		sudo pacman -S --noconfirm --needed mtools
		sudo pacman -S --noconfirm --needed exa
        sudo pacman -S --noconfirm --needed gvfs
        sudo pacman -S --noconfirm --needed gvfs-mtp
        sudo pacman -S --noconfirm --needed gvfs-afc
        sudo pacman -S --noconfirm --needed gvfs-gphoto2
        sudo pacman -S --noconfirm --needed gvfs-nfs
        sudo pacman -S --noconfirm --needed gvfs-smb
        sudo pacman -S --noconfirm --needed dialog
		sudo pacman -S --noconfirm --needed zenity
		sudo pacman -S --noconfirm --needed bash-completion
		sudo pacman -S --noconfirm --needed udftools
		sudo pacman -S --noconfirm --needed exfat-utils
		sudo pacman -S --noconfirm --needed uudeview
		sudo pacman -S --noconfirm --needed ntfs-3g
		sudo pacman -S --noconfirm --needed libmtp
		sudo pacman -S --noconfirm --needed jq
		sudo pacman -S --noconfirm --needed binutils
		sudo pacman -S --noconfirm --needed usbutils
		sudo pacman -S --noconfirm --needed udiskie
		sudo pacman -S --noconfirm --needed udisks2
		sudo pacman -S --noconfirm --needed unace 
		sudo pacman -S --noconfirm --needed p7zip
		sudo pacman -S --noconfirm --needed unrar
		sudo pacman -S --noconfirm --needed zip
		sudo pacman -S --noconfirm --needed unzip
		sudo pacman -S --noconfirm --needed file-roller
		sudo pacman -S --noconfirm --needed mlocate
		#sudo pacman -S --noconfirm --needed sshfs
		sudo pacman -S --noconfirm --needed gpart
		sudo pacman -S --noconfirm --needed sharutils
		sudo pacman -S --noconfirm --needed uudeview
		sudo pacman -S --noconfirm --needed pacman-contrib
        sudo pacman -S --noconfirm --needed alsa-firmware
        sudo pacman -S --noconfirm --needed alsa-lib
        sudo pacman -S --noconfirm --needed alsa-plugins
        sudo pacman -S --noconfirm --needed alsa-utils
        sudo pacman -S --noconfirm --needed pulseaudio
        sudo pacman -S --noconfirm --needed pulseaudio-alsa
        sudo pacman -S --noconfirm --needed pavucontrol
        sudo pacman -S --noconfirm --needed playerctl
        sudo pacman -S --noconfirm --needed pamixer
        sudo pacman -S --noconfirm --needed mpc
        sudo pacman -S --noconfirm --needed mpd
        sudo pacman -S --noconfirm --needed ncmpcpp
        sudo pacman -S --noconfirm --needed xfce4-appfinder
        sudo pacman -S --noconfirm --needed numlockx
		#sudo pacman -S --noconfirm --needed polkit-gnome
		
        sudo pacman -S --noconfirm --needed paprefs
        #sudo pacman -S --noconfirm --needed volumeicon
        sudo pacman -S --noconfirm --needed curl
        sudo pacman -S --noconfirm --needed wget
        sudo pacman -S --noconfirm --needed git
        sudo pacman -S --noconfirm --needed htop
        #sudo pacman -S --noconfirm --needed lynx
        #sudo pacman -S --noconfirm --needed w3m
        sudo pacman -S --noconfirm --needed ueberzug
        sudo pacman -S --noconfirm --needed ranger
		sudo pacman -S --noconfirm --needed atool
		sudo pacman -S --noconfirm --needed highlight
		sudo pacman -S --noconfirm --needed poppler
		sudo pacman -S --noconfirm --needed tumbler
		sudo pacman -S --noconfirm --needed ffmpegthumbnailer
		sudo pacman -S --noconfirm --needed ffmpegthumbs
		sudo pacman -S --noconfirm --needed neofetch
		# sudo pacman -S --noconfirm --needed startship    <---- SE quiser o STARSHIP!!!
		
		###  If you want to install Jgmenu on Desktop:  ####
        sudo pacman -S --noconfirm --needed jgmenu menu-cache libfm-extra
		sudo pacman -S --noconfirm --needed xdo
		yay -S xqp			## Não esqueça de copiar o arquivo de configuração
        
        ###  If you want to install Thunar:  ####
        sudo pacman -S --noconfirm --needed thunar
		sudo pacman -S --noconfirm --needed thunar-archive-plugin
		sudo pacman -S --noconfirm --needed thunar-media-tags-plugin
		sudo pacman -S --noconfirm --needed thunar-shares-plugin
		sudo pacman -S --noconfirm --needed thunar-volman
		
		###  If you want prefer Nemo::  ####
		#sudo pacman -S --noconfirm --needed nemo
		#sudo pacman -S --noconfirm --needed nemo-audio-tab
		#sudo pacman -S --noconfirm --needed nemo-fileroller
		#sudo pacman -S --noconfirm --needed nemo-image-converter
		#sudo pacman -S --noconfirm --needed nemo-preview
		#sudo pacman -S --noconfirm --needed nemo-share
		#sudo pacman -S --noconfirm --needed cinnamon-translations
		sleep 3
		#gsettings set org.cinnamon.desktop.default-applications.terminal exec terminator
		
		sleep 3
		
		sudo pacman -S xfce-polkit
		sudo pacman -S zsh
		sudo pacman -S zsh-syntax-highlighting 
		sudo pacman -S zsh-autosuggestions
		
		sleep 2
        
        cd /home/$USER
        sudo pacman -S --noconfirm --needed xdg-user-dirs-gtk
        xdg-user-dirs-update
		yay bash-pipes
		
    else
        sair
    fi
}

sair() {
    echo -e "\nGoing out...\n"
    exit 0
}
