{ pkgs, user, ... }:
{
  programs.zsh.enable = true;

  users = {
    motd = "0 out of 5 car accidents are caused by drunk cats. So statistically drunk cats are the best drivers.";
    defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
    };
  };
}
