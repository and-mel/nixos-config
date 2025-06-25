#!/bin/sh

root=$(mktemp -d -p /tmp)
cp --archive --parents ~/.config/sops/age/keys.txt ${root}
cp --verbose --archive --link ~/nixos ${root}
echo ${root}
