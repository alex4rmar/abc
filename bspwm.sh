#!/bin/bash
echo "
######################################
                PACMAN
######################################
"
#
sudo pacman -Syy bspwm sxhkd alacritty unzip nitrogen picom leafpad lightdm lightdm-gtk-greeter firefox ranger nemo dmenu dialog ntfs-3g notepadqq --noconfirm
sudo systemctl enable lightdm.service
clear
#
echo "
######################################
                YAY
######################################
"
#
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -R yay
clear
#
echo "
######################################
                POLYBAR
######################################"
#
git clone https://aur.archlinux.org/polybar-git.git
cd polybar-git
makepkg -si
cd ..
sudo rm -R polybar-git
clear
#
echo "
######################################
                MKDIR
######################################"
#
sudo mkdir ~/.config/bspwm
sudo mkdir ~/.config/sxhkd
sudo mkdir ~/.config/polybar
clear
#
echo "
######################################
                COPIAR
######################################"
#
sudo cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
sudo cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
sudo cp /usr/share/doc/polybar/config ~/.config/polybar/
clear
sudo echo -e " exec bspwm " >  ~/.xinitrc


sudo chmod +x launch.sh

sudo chown root:root launch.sh

sudo cp launch.sh ~/.config/polybar/
