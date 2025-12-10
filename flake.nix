{
  description = "NixOS configuration with flakes";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };  
    niri = {
      url = "github:YaLTeR/niri";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, quickshell, ... }: {
    nixosConfigurations.minisquid = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
	      ./modules/noctalia.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.squid = import ./users/squid/home.nix;
            backupFileExtension = "backup";
	          extraSpecialArgs = { inherit inputs; };
          };
        }
      ];
    };
  };
}
