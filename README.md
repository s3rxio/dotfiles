# S3rxio Dotfiles

## Why shouldn't you use my dotfiles?
 - At the moment, my dotfiles is not tested.
 - My dotfiles - my dotfiles. They are customized for me. You may not like them and I won’t care. But you can try them following the guide

## How to use my dotfiles?
First you need to copy the repository
```sh
git clone https://github.com/s3rxio/dotfiles.git
cd dotfiles
```
There are 3 sh files in my repository. `install_system.sh` should be run when installing the system in `arch-chroot` or from superuser(root). The others can be run whenever you want :)
```
sudo su
./install_system.sh
./install_apps.sh
./install_langs.sh
```
After installation, you need to copy `.config` to your home folder
```sh
cp -fr .config ~/
```
