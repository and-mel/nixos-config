{
  pkgs,
  hostname,
  user,
  stateVersion,
  ...
}:
{
  nix.settings = {
    # enable flakes globally
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  networking.hostName = hostname;
  networking.computerName = hostname;
  system.defaults.smb.NetBIOSName = hostname;

  users.users."${user}" = {
    home = "/Users/${user}";
    description = user;
  };

  nix.settings.trusted-users = [ user ];

  system = {
    stateVersion = stateVersion;

    activationScripts.postUserActivation.text = ''
      # activateSettings -u will reload the settings from the database and apply them to the current session,
      # so we do not need to logout and login again to make the changes take effect.
      /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
    '';

    defaults = {
      NSGlobalDomain = {
        "com.apple.swipescrolldirection" = false;
      };
    };
  };

  security.pam.enableSudoTouchIdAuth = true;

  programs.zsh.enable = true;
}
