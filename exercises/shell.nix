{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ghc
    pkgs.cabal-install
    pkgs.zlib         # The C library
    pkgs.pkg-config   # Helps Cabal find the C library
  ];
}
