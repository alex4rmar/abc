#!/bin/bash

echo "
######################################
                PACMAN
######################################
"

#	sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger ntfs-3g --noconfirm
sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom leafpad lightdm lightdm-gtk-greeter firefox nemo dmenu dialog ntfs-3g --noconfirm
sudo systemctl enable lightdm.service
clear

echo "
######################################
                YAY
######################################
"


git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -R yay
clear

echo "
######################################
                POLYBAR
######################################
"
git clone https://aur.archlinux.org/polybar-git.git
cd polybar-git
makepkg -si
cd ..
sudo rm -R polybar-git
clear


echo "
######################################
                MKDIR
######################################
"
sudo mkdir ~/.config/bspwm
sudo mkdir ~/.config/sxhkd
sudo mkdir ~/.config/polybar
clear


echo "
######################################
                COPIAR
######################################
"
 sudo cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
 sudo cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
 sudo cp /usr/share/doc/polybar/config ~/.config/polybar/
 clear
 sudo echo -e " exec bspwm " >  ~/.xinitrc
#sudo nano ~/.config/bspwm/bspwmrc


#sudo cp bspwmrc ~/.config/bspwm/
#sudo cp sxhkdrc ~/.config/sxhkd/
#sudo cp config ~/.config/polybar/
#sudo cp launch.sh ~/.config/polybar/


echo "#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example >>/tmp/polybar1.log 2>&1 & disown

echo "Bars launched..."

" >> ~/.config/polybar/launch.sh

sudo chmod +x ~/.config/polybar/launch.sh


