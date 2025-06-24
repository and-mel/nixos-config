{ pkgs, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/spaceduck.yaml";

    image = ./nix-glow-black.jpg;
    autoEnable = true;

    homeManagerIntegration = {
      autoImport = false;
      followSystem = false;
    };
  };
}
