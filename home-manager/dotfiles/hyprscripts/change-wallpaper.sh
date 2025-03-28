#!/usr/bin/env nix-shell
#!nix-shell -i bash

wal=$(find ~/wallpapers -mindepth 1 -maxdepth 1 ! -type l | rofi -dmenu)
if [ $wal ]; then
  echo $wal
  ln -sf $wal ~/wallpapers/wallpaper.jpg
  hyprctl hyprpaper reload ",~/wallpapers/wallpaper.jpg"
  wallust run ~/wallpapers/wallpaper.jpg
fi