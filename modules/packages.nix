{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    home-manager
    gcc
    nixfmt-rfc-style
  ];

  fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
  ];
}
