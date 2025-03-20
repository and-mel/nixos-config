{
  stateVersion,
  hostname,
  inputs,
  user,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules
    inputs.home-manager.nixosModules.default
  ];

  home-manager = {
    users = {
      "${user}" = import ./home.nix;
    };
  };

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
