{


   description = "flake for islam";

   inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix = {
        url = "github:Gerg-L/spicetify-nix";
        inputs.nixpkgs.follows = "nixpkgs";
    };

     nixcord = {
        url = "github:kaylorben/nixcord";
    };
     catppuccin = {
        url = "github:catppuccin/nix";
    };
     nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
   };

   outputs =
     inputs @ {
      self,
      nixpkgs,
      home-manager,
      ...
       }:
     let
       lib = nixpkgs.lib;
       system = "x86_64-linux";
       pkgs = import nixpkgs {
          inherit system;
	     config.allowUnfree = true;
       overlays = [ inputs.nur.overlays.default ];
  };
     in {
        nixosConfigurations = {
          flake = nixpkgs.lib.nixosSystem {
	        specialArgs = {
            inherit system;
            inherit inputs;
	};
            modules = [
            ./hosts/main/configuration.nix 
            ];
      };
    };
    homeConfigurations = {
    islam = home-manager.lib.homeManagerConfiguration {
    pkgs = pkgs;
    extraSpecialArgs = {
     inherit pkgs;
     inherit system;
     inherit inputs;
    };
    modules = [ 
    ./home/home.nix
    inputs.spicetify-nix.homeManagerModules.default
    inputs.nixcord.homeManagerModules.nixcord
    inputs.catppuccin.homeManagerModules.catppuccin
    ];
   };
  };
 };
}
