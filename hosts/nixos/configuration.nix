{
  stateVersion,
  hostname,
  inputs,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules
    inputs.home-manager.nixosModules.default
  ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
