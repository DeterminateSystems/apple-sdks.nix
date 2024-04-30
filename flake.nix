{
  description = "Apple SDKs";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/=0.1.590113.tar.gz";
  };

  outputs =
    { self
    , nixpkgs
    , ...
    } @ inputs:
    let
      supportedSystems = [ "x86_64-darwin" "aarch64-darwin" ];

      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: (forSystem system f));

      forSystem = system: f: f rec {
        inherit system;
        pkgs = import nixpkgs { inherit system; };
        lib = pkgs.lib;
      };
    in
    {
      packages = forAllSystems ({ system, pkgs, ... }: (
        let
          lib = pkgs.lib;
          prefixNVWith = prefix: { name, value }: { name = "${prefix}-${name}"; inherit value; };
        in
        builtins.listToAttrs (lib.lists.flatten (builtins.map
          ({ name, value }:
            builtins.map (prefixNVWith "${name}-framework") (lib.attrsToList (builtins.removeAttrs value.frameworks [ "override" "overrideDerivation" ]))
          )
          (lib.attrsToList self.legacyPackages.${system}.sdks)
        ))
      ));

      legacyPackages = forAllSystems ({ system, pkgs, ... }: {
        sdks = builtins.removeAttrs (pkgs.callPackage ./src/default.nix { }) [ "override" "overrideDerivation" ];
      });

      checks = self.packages;
    };
}
