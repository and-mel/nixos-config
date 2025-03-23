{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    # Desktop apps
    lutris
    prismlauncher
    spotify
    vesktop
    zed-editor

    # Programming launguages & LSPs
    nil
    nixd
    python313Packages.pip
    python3
    zulu23

    # Utilities
    git-credential-oauth
    cowsay
    fortune
  ];
}
