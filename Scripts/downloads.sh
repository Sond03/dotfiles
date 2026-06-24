#!/usr/bin/bash

mapfile -t pacman_pkgs < <(grep -v '^$' ./pacman.txt) # makes sure there are no empty lines
mapfile -t yay_pkgs < <(grep -v '^$' ./yay.txt) # makes sure there are no empty lines

pacman_downloads(){
    sudo pacman -Syu ${pacman_pkgs[@]} --noconfirm
}

yay_downloads(){
    yay -S ${yay_pkgs[@]} --noconfirm
}

download_yay(){
    cd ~
    sudo pacman -S --needed git base-devel --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ~
    rm -rf yay
}

pacman_downloads 
download_yay 
yay_downloads 
