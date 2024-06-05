sudo cp ./etc/pacman.conf /etc/
sudo pacman -Syu vim git htop plasma konsole dolphin spectacle ark gwenview vlc bluez bluez-utils pulseaudio pulseaudio-alsa pulseaudio-bluetooth plasma-pa kwallet-pam kwalletmanager networkmanager openvpn networkmanager-openvpn libxcb os-prober

sudo systemctl enable NetworkManager

sudo cp ./etc/environment /etc/
sudo cp ./etc/default/grub /etc/default/
sudo grub-mkconfig -o /boot/grub/grub.cfg

git config --global core.editor "vim"

sudo pacman -S sddm sddm-kcm
sudo cp -r ./etc/sddm.conf.d/ /etc/
sudo systemctl enable sddm

sudo pacman -S linux-headers nvidia
sudo cp ./etc/mkinitcpio.conf /etc/
sudo mkinitcpio -P
