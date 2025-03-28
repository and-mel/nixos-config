{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = "~/.config/rofi/themes/rounded-dark.rasi";
    extraConfig = {
    };
  };
}
