{
  wayland.windowManager.hyprland = {
    enabled = true;

    settings = {
      env = [
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XCURSOR_THEME,NotwaitaBlack"
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_THEME,NotwaitaBlack"
        "HYPRCURSOR_SIZE,24"
      ];

      monitor = [
        "HDMI-A-1, 1920x1080@60, 0x0, 1"
        "DP-1, 3840x2160@60, 1920x0, 1.50"
      ];

      "$terminal" = "kitty";
      "$fileManager" = "thunar";
      "$menu" = "rofi -show drun -show-icons";

      exec-once = [
        "hyprpaper"
        "waybar"
      ];

      general = {
          gaps_in = 5;
          gaps_out = "5, 20, 20, 20";
          border_size = 2;

          "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
          "col.inactive_border" = "rgba(3c3836ff)";
          bezier = "linear, 0.0, 0.0, 1.0, 1.0";

          resize_on_border = false;
          allow_tearing = false;
          layout = "dwindle";
      };

      decoration = {
          rounding = 10;
          # rounding_power = 2

          active_opacity = 1.0;
          inactive_opacity = 0.9;
          fullscreen_opacity = 1.0;

          shadow = {
            enabled = false;
          };

          blur = {
              enabled = true;
              size = 3;
              passes = 1;

              vibrancy = 0.1696;
          };
      };

      animations = {
          enabled = true;

          bezier = [
            "easeOutQuint,0.23,1,0.32,1"
            "easeInOutCubic,0.65,0.05,0.36,1"
            "linear,0,0,1,1"
            "almostLinear,0.5,0.5,0.75,1.0"
            "quick,0.15,0,0.1,1"
          ];

          animation = [
            "global, 1, 10, default"
            "border, 1, 5.39, easeOutQuint"
            "windows, 1, 4.79, easeOutQuint"
            "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
            "windowsOut, 1, 1.49, linear, popin 87%"
            "fadeIn, 1, 1.73, almostLinear"
            "fadeOut, 1, 1.46, almostLinear"
            "fade, 1, 3.03, quick"
            "layers, 1, 3.81, easeOutQuint"
            "layersIn, 1, 4, easeOutQuint, fade"
            "layersOut, 1, 1.5, linear, fade"
            "fadeLayersIn, 1, 1.79, almostLinear"
            "fadeLayersOut, 1, 1.39, almostLinear"
            "workspaces, 1, 1.94, almostLinear, fade"
            "workspacesIn, 1, 1.21, almostLinear, fade"
            "workspacesOut, 1, 1.94, almostLinear, fade"
          ];
      };

      dwindle = {
          pseudotile = true;
          preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
          force_default_wallpaper = 0;
          disable_hyprland_logo = true;
      };

      xwayland = {
          force_zero_scaling = true;
          use_nearest_neighbor = true;
          enabled = true;
      };
    };
  };
}
