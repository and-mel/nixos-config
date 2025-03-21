{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    # Desktop apps
    spotify
    vesktop
    zed-editor
    prismlauncher

    # Programming launguages & LSPs
    nil
    nixd
    python313Packages.pip
    python3
    zulu23

    # Utilities
    git-credential-oauth
  ];
}
