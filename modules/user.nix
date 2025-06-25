{
  config,
  pkgs,
  user,
  ...
}:
{
  sops.secrets."passwords/${user}".neededForUsers = true;
  services.logrotate.checkConfig = false;
  programs.zsh.enable = true;

  users = {
    mutableUsers = false;
    motd = "0 out of 5 car accidents are caused by drunk cats. So statistically drunk cats are the best drivers.";
    defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      hashedPasswordFile = config.sops.secrets."passwords/${user}".path;
      extraGroups = [
        "wheel"
        "networkmanager"
      ];

      openssh.authorizedKeys.keyFiles = [
        ./keys/id_andrei.pub
      ];
    };
  };
}
