{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      "layer" = "top";
      "margin-top" = 8;
      "margin-bottom" = 0;
      "margin-left" = 0;
      "margin-right" = 0;
      "height" = 16;

      "include" = [ "~/.config/waybar/modules.json" ];

      "modules-left" = [
        "hyprland/workspaces"
      ];

      "modules-center" = [
        "clock"
      ];

      "modules-right" = [
        "pulseaudio"
        "cpu"
        "memory"
        "temperature"
      ];
    };
  };
}
