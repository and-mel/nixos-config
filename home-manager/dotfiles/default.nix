{
  home.file = {
    ".config/wallust".source = ./wallust;
    ".config/rofi/themes".source = ./rofi-themes;
    ".config/hypr/scripts" = {
      source = ./hyprscripts;
      recursive = true;
      executable = true;
    };
  };
}
