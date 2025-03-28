{
  imports = [
    ./modules.nix
  ];
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        margin-top = 8;
        margin-bottom = 0;
        margin-left = 16;
        margin-right = 16;
        height = 16;

        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [
          "clock"
        ];

        modules-right = [
          "battery"
          "pulseaudio"
          "cpu"
          "memory"
          "temperature"
        ];
      };
    };
  };
}
