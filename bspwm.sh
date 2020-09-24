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


cd ..
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -R yay
clear

######################################
                 POLYBAR
######################################

git clone https://aur.archlinux.org/polybar-git.git
cd polybar-git
makepkg -si
cd ..
sudo rm -R polybar-git
clear


######################################
                MKDIR
######################################

sudo mkdir ~/.config/bspwm
sudo mkdir ~/.config/sxhkd
sudo mkdir ~/.config/polybar
clear


######################################
                COPIAR
######################################

# sudo cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
# sudo cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
# sudo cp /usr/share/doc/polybar/config ~/.config/polybar/
# clear

# sudo echo -e " exec bspwm " >  ~/.xinitrc

# sudo nano ~/.config/bspwm/bspwmrc


sudo cp bspwmrc ~/.config/bspwm/
sudo cp sxhkdrc ~/.config/sxhkd/
sudo cp config ~/.config/polybar/
sudo cp launch.sh ~/.config/polybar/
sudo cp .xinitrc ~/

