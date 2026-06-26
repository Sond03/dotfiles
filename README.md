# Dotfiles

My personal Arch Linux configuration managed with GNU Stow.

> **OS:** Arch Linux
> **Shell:** zsh
> **WM:** Hyprland
---
## Requirements
Before installing make sure to have the following installed:

- Git
- Stow

```sh
sudo pacman -S git
sudo pacman -S stow
```
--- 
## Installation

Clone the repo to your $HOME directory 

```sh
git clone https://github.com/Sond03/dotfiles.git ~/dotfiles
cd ~/dotfiles 
```

if dotfiles folder is not made 

```sh
mkdir ~/dotfiles
git clone https://github.com/Sond03/dotfiles.git ~/dotfiles
cd ~/dotfiles 
```

Then use Stow to create symlinks (make sure .config folder structure is the same in dotfiles folder)

Manage them all with one command 

```sh
stow .
```
when you are inside the ~/dotfiles folder

---
## Repository Structure

```
dotfiles/
├── .config
│   ├── kitty/
│   ├── nvim/
│   ├── quickshell/
│   ├── yazi/
│   ├── waybar/
│   └── ...
├── .zshrc 
```
---
## Notes

- These configurations are designed for my personal workflow.
- They may require additional fonts, themes, or packages.
- Waybar is mostly unused on my system but its still a nice config quickshell is the new standard here
---
