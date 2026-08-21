{
  description = "Manim development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          python3
          manim
          python3Packages.python-lsp-server
          python3Packages.numpy
          pyright
          ruff
          black
          isort
          pkg-config
          gcc
          cairo
          pango
          glib
        ];
      };
    };
}
