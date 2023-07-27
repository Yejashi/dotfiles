#!/usr/bin/env bash
#
#

#Install Laz
echo "Cloning LazyVim"
git clone https://github.com/LazyVim/starter ~/.config/nvim

echo "Copying relevant configs"
cp -r kitty ~/.config/kitty
cp -r i3 ~/.config/i3
cp -r picom ~/.config/picom
cp -r polybar ~/.config/polybar
cp -r scripts ~/.config/scripts
cp -r rofi ~/.config/rofi
cp .vimrc ~/.vimrc

