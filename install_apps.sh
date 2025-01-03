sudo pacman -S obs-studio google-chrome discord telegram-desktop obsidian simple-scan

sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER yay-git
cd yay-git
makepkg -si
cd ..
sudo rm -rf yay-git

yay -S visual-studio-code-bin postman-bin onlyoffice-bin

sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
