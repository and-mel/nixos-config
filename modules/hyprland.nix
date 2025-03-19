{ pkgs, ... }:
{
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

  services.logind.extraConfig = "HandlePowerKey=suspend";
}
