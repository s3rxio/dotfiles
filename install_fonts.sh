sudo pacman -S noto-fonts noto-fonts-emoji noto-fonts-extra awesome-terminal-fonts powerline powerline-fonts

echo "Would you like to install Windows fonts? [y/n]"

read installWinFonts

if [ "$installWinFonts" = "y" ] || [ "$installWinFonts" = "Y" ]; then
  echo "Enter windows directory"
  read windowsDir

  echo "Installing Windows fonts..."
  sudo mkdir /usr/local/share/fonts
  sudo mkdir /usr/local/share/fonts/WindowsFonts
  sudo cp -r $windowsDir/Windows/Fonts/* /usr/local/share/fonts/WindowsFonts/
  sudo chmod 644 /usr/local/share/fonts/WindowsFonts/*

  echo "Update font cache"
  fc-cache --force

  echo "Windows fonts installed"
fi

if [ "$installWinFonts" = "n" ] || [ "$installWinFonts" = "N" ]; then
  echo "Skipping Windows fonts..."
fi