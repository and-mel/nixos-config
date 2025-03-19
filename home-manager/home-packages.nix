{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
	home.packages = with pkgs; [
	  nil
		nixd
		neovim
    waybar
    brave
    dunst
    libnotify
    hyprpaper
    rofi-wayland
    yazi
    killall
    python313Packages.pip
    python3
    stdenv.cc.cc.lib
    zed-editor
    hyprpolkitagent
    hyprcursor
    playerctl
    libsecret
    spotify
    vesktop
    wallust
    git-credential-oauth
	];
}
