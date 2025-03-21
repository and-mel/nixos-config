{
  programs.waybar.settings.mainBar = {
    "clock" = {
      "format" = " { =%H =%M}";
      "format-alt" = "{ =%A; %B %d; %Y (%R)}  ";
      "tooltip-format" = "<tt>{calendar}</tt>";
      "calendar" = {
        "mode" = "month";
        "mode-mon-col" = 3;
        "weeks-pos" = "right";
        "on-scroll" = 1;
        "format" = {
          "months" = "<span color='#ffead3'><b>{}</b></span>";
          "days" = "<span color='#ecc6d9'><b>{}</b></span>";
          "weeks" = "<span color='#99ffdd'><b>W{}</b></span>";
          "weekdays" = "<span color='#ffcc66'><b>{}</b></span>";
          "today" = "<span color='#ff6699'><b><u>{}</u></b></span>";
        };
      };
      "actions" = {
        "on-click-right" = "mode";
        "on-scroll-up" = [
          "tz_down"
          "shift_down"
        ];
        "on-scroll-down" = [
          "tz_up"
          "shift_up"
        ];
      };
    };

    "hyprland/workspaces" = {
      "on-click" = "activate";
      "active-only" = false;
      "all-outputs" = false;
      "format" = "{id}";
    };

    "pulseaudio" = {
      "scroll-step" = 5;
      "max-volume" = 150;
      "format" = "󰕾 {volume}%";
      "format-bluetooth" = "󰕾 {volume}%";
      "nospacing" = 1;
      "tooltip" = false;
    };

    "cpu" = {
      "format" = " {usage}%";
      "tooltip" = true;
    };

    "memory" = {
      "format" = " {percentage}%";
    };

    "temperature" = {
      "critical-threshold" = 80;
      "format" = "{icon} {temperatureC}°C";
      "format-icons" = [
        ""
        ""
        ""
      ];
    };
  };
}
