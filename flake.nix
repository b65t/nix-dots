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

     textfox = {
        url = "github:adriankarlen/textfox";
    };
     catppuccin = {
        url = "github:catppuccin/nix";
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
       hostname = "islamflake";
       username = "islam";
       pkgs = import nixpkgs {
          inherit system;
	     config.allowUnfree = true;	
  };
     in {
        nixosConfigurations = {
          nixos = nixpkgs.lib.nixosSystem {
	  specialArgs = {
            inherit system;
            inherit username;
            inherit hostname;
            inherit inputs;
	};
            modules = [ ./NixOS/configuration.nix ];
      };
    };
    homeConfigurations = {
    islam = home-manager.lib.homeManagerConfiguration {
    pkgs = pkgs;
    extraSpecialArgs = {
     inherit pkgs;
     inherit username;
     inherit hostname;
     inherit system;
     inherit inputs;
    };
    modules = [ 
    ./home/home.nix
    inputs.spicetify-nix.homeManagerModules.default
    inputs.nixcord.homeManagerModules.nixcord
    inputs.textfox.homeManagerModules.default
    inputs.catppuccin.homeManagerModules.catppuccin
    ];
   };
  };
 };
}
