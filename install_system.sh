sudo pacman -Syu vim git htop plasma konsole dolphin spectacle ark vlc bluez bluez-utils pulseaudio pulseaudio-alsa pulseaudio-bluetooth plasma-pa kwallet-pam kwalletmanager networkmanager-openvpn

git config --global core.editor "vim"

sudo pacman -S sddm sddm-kcm
sudo mkdir /etc/sddm.conf.d/
sudo sh -c "echo \"[Autologin]
User=s3rxio
Session=plasma\" > /etc/sddm.conf.d/autologin.conf"
sudo systemctl enable sddm

sudo pacman -S linux-headers nvidia
sudo sed -e "s/kms //g" -i /etc/mkinitcpio.conf
sudo mkinitcpio -P
