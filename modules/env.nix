{
  environment.sessionVariables = rec {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIX_OZONE_WL = "1";
    EDITOR = "nvim";
    SUDO_EDITOR = "nvim";
    XDG_BIN_HOME = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };

  environment.etc."issue".text = "Welcome to NixOS - \\l!\n\\d \\t\n\n";
}
