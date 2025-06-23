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
    unzip
    zip
  ];

  fonts.packages =
    with pkgs;
    [
      noto-fonts
    ]
    ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}
