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
      uid = 1000;
      # hashedPassword = "$y$j9T$w7pEyq50lwO4wkiw/aYGW.$9TD3SMMCdl3uXThNMLSxngUjqySV0n.P8nkBAyFWgHC";
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
