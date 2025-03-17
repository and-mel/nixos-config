{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    home-manager
    gcc
  ];

  fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
  ];
}
