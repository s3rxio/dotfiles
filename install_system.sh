pacman -Syu plasma konsole dolphin spectacle ark dragon pulseaudio pulseaudio-bluetooth plasma-pa kwallet-pam kwalletmanager spectacle

pacman -S sddm sddm-kcm
mkdir /etc/sddm.conf.d/
echo "[Autologin]
User=s3rxio
Session=plasma" > /etc/sddm.conf.d/autologin.conf
systemctl enable sddm

pacman -S linux-headers nvidia-dkms
sed -e "s/kcm//g" -i /etc/mkinitcpio.conf
mkinitcpio -P

pacman -S noto-fonts noto-fonts-emoji noto-fonts-extra awesome-terminal-fonts powerline powerline-fonts
