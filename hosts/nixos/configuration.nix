{ stateVersion, hostname, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules
  ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
