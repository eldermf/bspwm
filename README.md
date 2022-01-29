# arch-bspwm

Configurações básicas do meu Arch linux com Bspwm e Polybar prontos para uso.

![arch-bspwm-01_01_2022](https://user-images.githubusercontent.com/13444013/147855149-6dc63efb-a016-4b62-aea9-60b7741c3bde.png)

Programas necessários:

● alacritty e/ou  
● terminator  
● tty-clock  
● cava  
● bspwm  
● sxhkd  
● polybar  
● zsh  
● polkit-gnome  
● rofi  
● picom-jonaburg-git  
● lightdm-webkit-theme-aether  
● jq  
● ttf-weather-icons 
● pacman-contrib

Scripts para o Polybar:

https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts
# bspwm

Other informations: https://github.com/baskerville/bspwm/wiki

Dependencies

    Arch Linux: $ sudo pacman -S libxcb xcb-util xcb-util-wm xcb-util-keysyms
    Ubuntu/Debian: $ sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev

Building and Installing

	$ git clone https://github.com/baskerville/bspwm.git
	$ git clone https://github.com/baskerville/sxhkd.git
	$ cd bspwm && make && sudo make install
	$ cd ../sxhkd && make && sudo make install

Uninstalling

	$ cd bspwm && sudo make uninstall
	$ cd ../sxhkd && sudo make uninstall

Running bspwm

You'll need to copy the example configurations to your ~/.config folder. Ensure ~/.config/bspwm/bspwmrc is executable.

	$ mkdir -p ~/.config/{bspwm,sxhkd}
	$ cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
	$ cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
	$ chmod u+x ~/.config/bspwm/bspwmrc

To start bspwm at login add exec bspwm to the bottom of your ~/.xinitrc or ~/.xprofile (depending on how your launch your X/Display manager). The example bspwmrc launches sxhkd for you.
