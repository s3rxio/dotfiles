# S3rxio Dotfiles

## Why you should NOT use my dotfiles
 - At the moment, my dotfiles is not tested.
 - My dotfiles - my dotfiles. They are customized for me. You may not like them and I won’t care. But you can try them following the guide

## How to use my dotfiles?
First you need to copy the repository
```sh
git clone https://github.com/s3rxio/dotfiles.git
cd dotfiles
```
There are 4 sh scripts in my repository. You have to execute each of scripts
```sh
./install_system.sh
./install_apps.sh
./install_langs.sh
./install_games.sh # if u want
```
After installation, you need to copy `.config` to your home folder
```sh
cp -fr ./.config/* ~/.config
```
