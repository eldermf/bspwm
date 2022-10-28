#**BspWM**#

![03-BspWM-28_10_2022](https://user-images.githubusercontent.com/13444013/198607374-488a57ee-e00c-42ce-a5f7-fcdc589ca011.png)

**Basic settings of my Arch linux with Bspwm and Polybar out of the box.**

Required basic programs:
	- kitty and/or terminator;																		- pacman-contrib;																			- pacman-contrib;																			- tty-clock;																				- cava;																					- bspwm;																				- sxhkd;																				- polybar;																				- zsh;																					- polkit-gnome or xfce-polkit;																		- rofi;																					- picom-animations-git or picom-jonaburg-git;																- lightdm-webkit-theme-aether;																		- jq;																					- ttf-weather-icons.	

The Old Rofi:

![01-BspWM-Rofi_old-24_09_2022](https://user-images.githubusercontent.com/13444013/198607770-6eb3ac65-e095-4008-bff8-255ac31739d5.png)

The New Rofi:

![02-BspWM-Rofi-28_10_2022](https://user-images.githubusercontent.com/13444013/198608256-0cf73704-00d0-445c-9c26-9c34d7fbf9a3.png)
 
Choose one!

**Scripts to Polybar:**

	https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts

Other informations: 	https://github.com/baskerville/bspwm/wiki

**Dependencies**

Arch Linux: 	$ sudo pacman -S libxcb xcb-util xcb-util-wm xcb-util-keysyms

Ubuntu/Debian: 	$ sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev

**Building and Installing**

	$ git clone https://github.com/baskerville/bspwm.git
	$ git clone https://github.com/baskerville/sxhkd.git
	$ cd bspwm && make && sudo make install
	$ cd ../sxhkd && make && sudo make install

**Uninstalling**

	$ cd bspwm && sudo make uninstall
	$ cd ../sxhkd && sudo make uninstall

Running bspwm
You'll need to copy the example configurations to your ~/.config folder. Ensure ~/.config/bspwm/bspwmrc is executable.

	$ mkdir -p ~/.config/{bspwm,sxhkd}
	$ cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
	$ cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
	$ chmod u+x ~/.config/bspwm/bspwmrc

To start bspwm at login add exec bspwm to the bottom of your ~/.xinitrc or ~/.xprofile (depending on how your launch your X/Display manager). The example bspwmrc launches sxhkd for you.

**How to Install through the scripts**

To install through the scripts, in a more practical and faster way, read and study each of the scripts and verify that they are fully met and install them one by one according to the order of their numbering, for example:

	Install YAY first, then the basic configuration files, then copy the files to the /etc folder, and so on.
	$ ./000-installing-yay.sh
	$ ./010-basics-files.sh
	...
	$ ./300-multimedia.sh

Skip the 040-artix_repos.sh script if you are not using Artix.

Mark with a “#” that package that you do not want to be installed and vice versa, or add those programs that interest you.
