{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    btop
    gcc
    neofetch
    neovim
    home-manager
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
