pacman -Syu plasma konsole dolphin spectacle ark vlc pulseaudio pulseaudio-bluetooth plasma-pa kwallet-pam kwalletmanager spectacle

pacman -S sddm sddm-kcm
mkdir /etc/sddm.conf.d/
echo "[Autologin]
User=s3rxio
Session=plasma" > /etc/sddm.conf.d/autologin.conf
systemctl enable sddm

pacman -S linux-headers nvidia
sed -e "s/kms //g" -i /etc/mkinitcpio.conf
mkinitcpio -P
