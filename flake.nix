{
  description = "Streamlined version of TheOpteProject/LGL (Large Graph Layout)";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs/nixos-21.05";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = {
          minilgl = pkgs.stdenv.mkDerivation {
            pname = "minilgl";
            version = "0.1.0";
            src = self;
            buildInputs = [ pkgs.boost pkgs.cmake ];
          };
        };
        defaultPackage = self.packages.${system}.minilgl;
        apps = {
          lglayout2d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglayout2d";
          };
          lglayout3d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglayout3d";
          };
          lglbreakup2d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglbreakup2d";
          };
          lglbreakup3d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglbreakup3d";
          };
          lglfileconvert2d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglfileconvert2d";
          };
          lglfileconvert3d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglfileconvert3d";
          };
          lglrebuild2d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglrebuild2d";
          };
          lglrebuild3d = {
            type = "app";
            program = "${self.packages.${system}.minilgl}/bin/lglrebuild3d";
          };
        };
        defaultApp = self.apps.${system}.lglayout2d;
      }
    );
}