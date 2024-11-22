{


   description = "flake for islam";

   inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
   };

   outputs = { self, nixpkgs, home-manager, ... }:
     let
       lib = nixpkgs.lib;
       system = "x86_64-linux";
       pkgs = import nixpkgs {
          inherit system;
	     config.allowUnfree = true;	
  };
     in {
        nixosConfigurations = {
          nixos = nixpkgs.lib.nixosSystem {
            inherit system;
            modules = [ ./NixOS/configuration.nix ];
      };
    };
    homeConfigurations = {
    islam = home-manager.lib.homeManagerConfiguration {
    inherit pkgs;
    modules = [ ./home/home.nix ];
   };
  };
 };

}
