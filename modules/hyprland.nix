{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    hyprcursor
    hyprlock
    hypridle
    hyprpaper
    hyprpolkitagent

    bibata-cursors
    waybar
    wallust
    rofi-rofi-wayland
    libnotify
    dunst
    playerctl
    brightnessctl
  ];

  hardware = {
    graphics.enable = true;
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = false;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  services.logind.extraConfig = "HandlePowerKey=suspend"; # Hypridle
  security.pam.services.hyprlock = { }; # Hyprlock
  security.polkit.enable = true; # Hyprpolkitagent
}
