{ pkgs, overlays, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [ overlays.unstable-packages ];

  home.packages = with pkgs; [
    # Desktop apps
    lutris
    prismlauncher
    spotify
    vesktop
    zed-editor
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
