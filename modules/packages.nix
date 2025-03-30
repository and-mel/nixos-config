{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    btop
    home-manager
    gcc
    neofetch
    neovim
    nixfmt-rfc-style
    plover.dev
  ];

  fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
  ];
}
