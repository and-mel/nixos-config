{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    nil
    nixd
    prismlauncher
    neovim
    waybar
    librewolf-bin
    dunst
    libnotify
    hyprpaper
    rofi-wayland
    killall
    python313Packages.pip
    python3
    zed-editor
    hyprpolkitagent
    hyprcursor
    hyprlock
    hypridle
    playerctl
    libsecret
    spotify
    vesktop
    wallust
    git-credential-oauth
    bibata-cursors
  ];
}
