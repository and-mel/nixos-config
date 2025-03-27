{
  home.file = {
    ".config/wallust".source = ./wallust;
    ".config/hypr/scripts" = {
      source = ./hyprscripts;
      recursive = true;
      executable = true;
    };
  };
}
