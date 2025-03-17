{
  # Bootloader.
  boot.loader = {
    efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
    };
    grub = {
        enable = true;
        useOSProber = true;
        efiSupport = true;
        devices = [ "nodev" ];
    };
  };
  boot.supportedFilesystems = [ "ntfs" ];
}
