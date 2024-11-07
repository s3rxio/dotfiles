sudo cp ./configs/etc/pacman.conf /etc/
sudo pacman -Syu vim git htop btop plasma konsole dolphin spectacle ark gwenview vlc bluez bluez-utils pulseaudio pulseaudio-alsa pulseaudio-bluetooth plasma-pa kwallet-pam kwalletmanager networkmanager openvpn networkmanager-openvpn libxcb os-prober

sudo systemctl enable NetworkManager

# Copy grub and env configs
sudo cp ./configs/etc/environment /etc/
sudo cp ./configs/etc/default/grub /etc/default/
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Set vim as default editor
git config --global core.editor "vim"

# SDDM
sudo pacman -S sddm sddm-kcm
sudo cp -r ./configs/etc/sddm.conf.d/ /etc/
sudo systemctl enable sddm

# Nvidia drivers
sudo pacman -S linux-headers nvidia
sudo cp ./configs/etc/mkinitcpio.conf /etc/
sudo mkinitcpio -P
