#!/usr/bin/bash

mapfile -t packages < <(grep -v '^$' ./Packages.txt) # makes sure there are no empty lines

download(){
    sudo pacman -S ${packages[@]}
}

download 
