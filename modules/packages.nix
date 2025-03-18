{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    home-manager
    gcc
  ];

  fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
  ];
}
