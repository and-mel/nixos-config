{
  description = "Nixos config flake";

  inputs = {
    # Official NixOS package repository
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Nix user repositories
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Secret Management using sops
    sops-nix = {
      url = "github:mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Apply colors and wallpaper to WM and apps
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Configure Discord
    nixcord = {
      url = "github:kaylorben/nixcord";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Disko - Manage disks on install
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      disko,
      nixpkgs,
      home-manager,
      sops-nix,
      stylix,
      nixcord,
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
            disko.nixosModules.disko
            stylix.nixosModules.stylix
            sops-nix.nixosModules.sops
            ./hosts/${hostname}/configuration.nix
          ];
        };

      overlays = import ./overlays { inherit inputs; };

      mkHomeConfiguration =
        args:
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            stylix.homeModules.stylix
            nixcord.homeModules.nixcord
            sops-nix.homeManagerModules.sops
            ./home-manager/home.nix
          ];

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
