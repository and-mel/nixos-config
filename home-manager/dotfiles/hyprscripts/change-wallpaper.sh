#!/bin/sh

wal=$(find ~/wallpapers -mindepth 1 -maxdepth 1 ! -type l -printf '%P\n' | rofi -dmenu -p wal)
if [ $wal ]; then
  echo $wal
  ln -sf $wal ~/wallpapers/wallpaper.jpg
  hyprctl hyprpaper reload ",~/wallpapers/wallpaper.jpg"
  wallust run ~/wallpapers/wallpaper.jpg
fi