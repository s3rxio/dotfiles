sudo pacman -S noto-fonts noto-fonts-emoji noto-fonts-extra awesome-terminal-fonts powerline powerline-fonts

echo "Would you like to install Windows fonts?"

select installWinFonts in "Yes" "No"; do
  case $installWinFonts in
    Yes ) 
      echo "Enter windows directory"
      read windowsDir

      echo "Installing Windows fonts"

      sudo mkdir /usr/local/share/fonts
      sudo mkdir /usr/local/share/fonts/WindowsFonts
      sudo cp -r $windowsDir/Windows/Fonts/* /usr/local/share/fonts/WindowsFonts/
      sudo chmod 644 /usr/local/share/fonts/WindowsFonts/*

      echo "Update font cache"
      fc-cache --force

      echo "Windows fonts installed"
      break;;
    No ) exit;;
  esac
done