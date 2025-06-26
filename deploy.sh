#!/bin/sh

root=$(mktemp -d -p /tmp)
cp --archive --parents ~/.config/sops/age/keys.txt $root
cp --archive --parents --link ~/nixos $root
printf "if nh home switch -b backup && uwsm check may-start; then\n\texec uwsm start -S hyprland-uwsm.desktop\nfi\n" > $root/home/$(whoami)/.zshrc
nix run github:nix-community/nixos-anywhere -- --flake "/home/$(whoami)/nixos#$2" --extra-files "$root" --chown /home/$(whoami) 1000:100 --generate-hardware-config nixos-generate-config /home/$(whoami)/nixos/hosts/$2/hardware-configuration.nix --target-host $1