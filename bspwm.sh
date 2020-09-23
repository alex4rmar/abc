#!/bin/bash

#	sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger ntfs-3g --noconfirm

sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox nemo dmenu dialog ntfs-3g --noconfirm
sudo systemctl enable lightdm.service
clear




cd ..
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -R yay
clear



git clone https://aur.archlinux.org/polybar-git.git
cd polybar-git
makepkg -si
cd ..
sudo rm -R polybar-git
clear




sudo mkdir ~/.config/bspwm
sudo mkdir ~/.config/sxhkd
sudo mkdir ~/.config/polybar
clear



sudo cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
sudo cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
sudo cp /usr/share/doc/polybar/config ~/.config/polybar/
clear


sudo echo -e " exec bspwm " >  ~/.xinitrc

sudo nano ~/.config/bspwm/bspwmrc










###################################################################
###################################################################
###################################################################
###################				###################
###################				###################
###################		Install		###################
###################				###################
###################				###################
###################################################################
###################################################################




YAY-AUR
-----------------------------
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


Polybar
-----------------------------
https://aur.archlinux.org/polybar-git.git
cd polibar
makepkg -si



xrandr
xrandr -s 1920 x 1080



snaps on Arch Linux
-----------------------------
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap


Snap Store
-----------------------------
sudo snap install snap-store



Firefox
-----------------------------
sudo snap install firefox
-----------------------------
sudo pacman -Sy firefox



Opera
-----------------------------
sudo snap install opera





---Para WIFI----
systemctl enable ifplugd@wlp3s0
nmcli dev wifi list
nmcli dev wifi connect 'NOMBRE DE RED' password CLAVE
nmcli dev status

 

Xbindkeys
-----------------------------
sudo pacman -S xbindkeys 
xbindkeys -d > ~/.xbindkeysrc


ALSA
-----------------------------
sudo pacman -S alsa-utils alsa-plugins alsa-oss
alsamixer
#los canales Master y PCM los pondremos a funcionar con "M" y los ponemos en "0<>0"
sudo modprobe snd_seq_oss snd_pcm_oss snd_mixer_oss
speaker-test -c 2


setxkbmap es

python (net)
-----------------------------
sudo pacman -Sy python-pip
pip install psutil
pip install iwlib


Instalar locate
-----------------------------
sudo pacman -Syyu
sudo pacman -S mlocate
sudo updatedb
locate --statistics


Pulseaudio
-----------------------------
pacman -S pulseaudio pavucontrol

spotify
-----------------------------
sudo snap install spotify

Zoom
-----------------------------
sudo snap install zoom-client


Microsoft Teams
-----------------------------
git clone https://aur.archlinux.org/teams.git
cd teams
makepkg -si


alsamixer
-----------------------------
pacman -Sy alsa-utils
gpasswd -a alex audio



SSH
-----------------------------
pacman -Sy opensshd
systemctl enable sshd
systemctl start sshd


Alacritty
-----------------------------
pacman -S alacritty
locate alacritty.yml
mkdir .config/alacritty/   (alacritty.yml)
cp -r /usr/share/doc/alacritty/example/alacritty.yml .config/alacritty/alacritty.yml

leafpad
-----------------------------
pacman -S leafpad



Menu
-----------------------------
pacman -S rofi


Dmenu
-----------------------------  
https://tools.suckless.org
-tool-dmenu-Download

cd Descargas
tar -xzvf dmenu.tar.gz
cd dmenu
sudo make install


-tool-dmenu-patches-line height-Download(click derecho)
-tool-dmenu-patches-Center-Download(click derecho)
-tool-dmenu-patches-border-Download(click derecho)
-tool-dmenu-patches-highlight-Download(click derecho)
-tool-dmenu-patches-morecolor-Download(click derecho)


cd Descargar/dmenu
patch -p1 < dmenu-.....
sudo make install







NEMO gestor de archivos
-----------------------------
pacman -S nemo






NVIM
-----------------------------
pacman -S neovim



Captura de pantalla
_______________________________
pacman -S flameshot







Modificacion del GRUB
_______________________________
https://wiki.archlinux.org/index.php/GRUB/Tips_and_tricks
https://www.gnome-look.org/p/1307852/
tar -Jxvf Tela-1080p.tar.xz
cd Tela-1080p
sudo cp -r Tela /boot/grub/themes/
sudo cp /etc/default/grub /etc/default/backup-grub
sudo nano -l /etc/default/grub

#comentamos la linea 28 "#" y pegamos lo siguiente en la linea 29
GRUB_GFXMODE=1920x1080
GRUB_GFXPAYLOAD_LINUX=keep

#Agregar la siguiente linea en la linea 48
GRUB_THEME="/boot/grub/themes/Tela/theme.txt"

sudo grub-mkconfig -o /boot/grub/grub.cfg






Modificacion del lightdm 
_______________________________
sudo nano /etc/lightdm/lightdm-gtk-greeter.conf


















