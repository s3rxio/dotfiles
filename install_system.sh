sudo pacman -Syu vim git htop plasma konsole dolphin spectacle ark gwenview vlc bluez bluez-utils pulseaudio pulseaudio-alsa pulseaudio-bluetooth plasma-pa kwallet-pam kwalletmanager networkmanager openvpn libxcb xorg-xwayland

git config --global core.editor "vim"

sudo pacman -S sddm sddm-kcm
sudo mkdir /etc/sddm.conf.d/
sudo mv ./sddm/* /etc/sddm.conf.d/
sudo systemctl enable sddm

sudo pacman -S linux-headers nvidia
sudo sed -e "s/kms //g" -i /etc/mkinitcpio.conf
sudo mkinitcpio -P
