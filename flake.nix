{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      user = "andrei";
      homeStateVersion = "24.11";
      hosts = [
        {
          hostname = "nixos";
          stateVersion = "24.11";
        }
        {
          hostname = "t480s";
          stateVersion = "24.11";
        }
      ];

      makeSystem =
        { hostname, stateVersion }:
        nixpkgs.lib.nixosSystem {
          system = system;
          specialArgs = {
            inherit
              inputs
              stateVersion
              hostname
              user
              ;
          };

          modules = [
            ./hosts/${hostname}/configuration.nix
          ];
        };

      overlays = import ./overlays { inherit inputs; };

      mkHomeConfiguration =
        args:
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home-manager/home.nix ];

          extraSpecialArgs = {
            inherit homeStateVersion user overlays;
          } // args;
        };
    in
    {
      nixosConfigurations = nixpkgs.lib.foldl' (
        configs: host:
        configs
        // {
          "${host.hostname}" = makeSystem {
            inherit (host) hostname stateVersion;
          };
        }
      ) { } hosts;

      homeConfigurations = {
        "${user}@nixos" = mkHomeConfiguration {
          monitor = [
            "HDMI-A-1, 1920x1080@60, 0x0, 1"
            "DP-1, 3840x2160@60, 1920x0, 1.50"
          ];
        };

        "${user}@t480s" = mkHomeConfiguration {
          monitor = [
            "eDP-1, 1920x1080@60, 0x0, 1.25"
          ];
        };
      };
    };
}
