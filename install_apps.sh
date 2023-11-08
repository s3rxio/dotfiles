sudo pacman -S obs-studio firefox discord telegram-desktop latte-dock

mkdir -p ~/.config/autostart
cp /usr/share/applications/org.kde.latte-dock.desktop ~/
mv ~/org.kde.latte-dock.desktop ~/.config/autostart

sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER yay-git
cd yay-git
makepkg -si
cd ..
sudo rm -rf yay-git

yay -S visual-studio-code-bin git-flow

sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
