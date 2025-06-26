{
  stateVersion,
  hostname,
  inputs,
  ...
}:
{
  imports = [
    (import ../disk-config.nix { device = "/dev/nvme0n1"; })
    ./hardware-configuration.nix
    ../../modules
    inputs.home-manager.nixosModules.default
  ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
