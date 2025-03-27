#!/bin/bash

wal=find ~/wallpapers -mindepth 1 -maxdepth 1 ! -type l | rofi -dmenu
if [ wal ]; then
  ln -s $wal wallpaper.jpg
  pkill hyprpaper
  hyprpaper &