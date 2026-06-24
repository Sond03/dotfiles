#!/usr/bin/env zsh

update(){
    echo "Updating..."
    sudo pacman -Syu --noconfirm 2>&1 | tee -a /home/sond/.logs/pacman-updates.log
}

while true; do
    echo "Updates are ..."
    checkupdates
    read "yn?Do you want to update the system?[Y/n] "
    case $yn in
        [Yy]* ) update; break;;
        [Nn]* ) echo "Exiting..."; exit;;
        * ) update; break;;
    esac
done
