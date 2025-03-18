{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
	home.packages = with pkgs; [
    neovim
    waybar
    brave
    kitty
    dunst
    libnotify
    hyprpaper
    rofi-wayland
    xfce.thunar
    killall
    python313Packages.pip
    python3
    stdenv.cc.cc.lib
    zed-editor
    hyprpolkitagent
    hyprcursor
    spotify
    vesktop
	];
}
