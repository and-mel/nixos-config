{
  homeStateVersion,
  user,
  config,
  ...
}:
{
  imports = [
    ./dotfiles
    ./modules
    ./home-packages.nix
    ./hosts/${config.networking.host}.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}
