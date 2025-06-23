{ pkgs, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/spaceduck.yaml";
    image = ./nix-glow-black.jpg;

    # targets.hyprland = {
    #   enable = true;
    #   hyprpaper.enable = true;
    # };
  };
}
