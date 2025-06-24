{ config, pkgs, ... }:
let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = {
      "*" = {
        margin = mkLiteral "0px";
        padding = mkLiteral "0px";
        spacing = mkLiteral "0px";
      };

      window = {
        location = mkLiteral "north";
        y-offset = mkLiteral "calc(50% - 176px)";
        width = mkLiteral "480";
        border-radius = mkLiteral "24px";
        border = mkLiteral "2px";
      };

      mainbox = {
        padding = mkLiteral "12px";
      };

      inputbar = {
        border = mkLiteral "2px";
        border-radius = mkLiteral "16px";

        padding = mkLiteral "8px 16px";
        spacing = mkLiteral "8px";
        children = mkLiteral "[ prompt, entry ]";
      };

      entry = {
        placeholder = "Search";
      };

      message = {
        margin = mkLiteral "12px 0 0";
        border-radius = mkLiteral "16px";
      };

      textbox = {
        padding = mkLiteral "8px 24px";
      };

      listview = {
        background-color = mkLiteral "transparent";

        margin = mkLiteral "12px 0 0";
        lines = 8;
        columns = 1;

        fixed-height = false;
      };

      element = {
        padding = mkLiteral "8px 16px";
        spacing = mkLiteral "8px";
        border-radius = mkLiteral "16px";
      };

      element-icon = {
        size = mkLiteral "1em";
        vertical-align = mkLiteral "0.5";
      };

      element-text = {
        text-color = mkLiteral "inherit";
      };
    };
    extraConfig = {
    };
  };
}
