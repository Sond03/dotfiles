#!/usr/bin/bash

mapfile -t pacman < <(grep -v '^$' ./pacman.txt) # makes sure there are no empty lines
mapfile -t yay < <(grep -v '^$' ./yay.txt) # makes sure there are no empty lines

pacman_downloads(){
    sudo pacman -Syu ${packages[@]} --noconfirm
}

download_yay(){
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ~
    rm -rf yay
}

pacman_downloads 
download_yay 
