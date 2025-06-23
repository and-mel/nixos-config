{
  pkgs,
  overlays,
  ...
}:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [
    overlays.nur
  ];

  home.packages = with pkgs; [
    # Desktop apps
    audacity
    msalsdk-dbusclient
    prismlauncher
    spotify
    vesktop
    vlc
    ungoogled-chromium
    kdePackages.kdenlive
    mcpelauncher-client
    mcpelauncher-ui-qt
    zenity

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
