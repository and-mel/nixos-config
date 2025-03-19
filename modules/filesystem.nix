{ lib, pkgs, ... }:
{
  fileSystems."/mnt/ntfs" = {
    device = "/dev/disk/by-uuid/E81A32E41A32AF84";
    fsType = "ntfs";
    options = [
      "nofail"
    ];
  };

  services.gvfs = {
    enable = true;
    package = lib.mkForce pkgs.gnome.gvfs;
  };
}
