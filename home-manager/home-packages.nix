{ pkgs, overlays, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [ overlays.unstable-packages ];

  home.packages = with pkgs; [
    # Desktop apps
    prismlauncher
    spotify
    vesktop
    unstable.mcpelauncher-client
    unstable.mcpelauncher-ui-qt

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
