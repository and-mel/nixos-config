{ lib, ... }:
{
  programs.kitty = {
    enable = true;

    settings = {
      # include = "./colors.conf";

      enable_audio_bell = "no";

      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      background_opacity = lib.mkForce 0.6;
      background_blur = 25;

      # symbol_map = "U+e000-U+e00a,U+ea60-U+ebeb,U+e0a0-U+e0c8,U+e0ca,U+e0cc-U+e0d7,U+e200-U+e2a9,U+e300-U+e3e3,U+e5fa-U+e6b7,U+e700-U+e8ef,U+ed00-U+efc1,U+f000-U+f2ff,U+f000-U+f2e0,U+f300-U+f381,U+f400-U+f533,U+f0001-U+f1af0 Symbols Nerd Font Mono";

      # background_opacity = 0.7;
      # background_blur = 30;

      window_padding_width = 5;
    };
  };
}
