{
    description = "My first nix flake!";

    inputs = {
      nixpkgs.url = "nixpkgs/nixos-24.05";
      home-manager.url = "github:nix-community/home-manager/release-24.05";
    };

    outputs = { self, nixpkgs, home-manager, ... }: 
    let 
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfigurations = {
        nixos-tutorial = lib.nixosSystem {
          inherit system;
          modules = [ ./configuration.nix ];
        };
      };

      homeConfigurations = {
        mussweg = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ];
        };
      };
    };
}
