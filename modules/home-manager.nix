{ inputs, ... }:
{
  imports = [ inputs.home-manager.nixosModules.default ];
  home-manager = {
    backupFileExtension = "backup";
    sharedModules = [
      {
        stylix.enable = true;
      }
    ];
  };
}
