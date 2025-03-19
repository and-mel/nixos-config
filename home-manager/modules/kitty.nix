{
  programs.kitty = {
    enable = true;

    settings = {
      include = "./colors.conf";

      enable_audio_bell = "no";

      font_family = "family='JetBrainsMono Nerd Font Mono'";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      background_opacity = 0.7;
      background_blur = 30;

      window_padding_width = 5;
    };
  };
}
