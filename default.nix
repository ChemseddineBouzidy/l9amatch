# default.nix
with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "laravel-env";

  buildInputs = [
    php
    phpPackages.composer
    nodejs_18  # includes npm + npx
    yarn       # optional, if you use it
  ];

  unpackPhase = "true";
  installPhase = "mkdir -p $out";

  # This avoids man page conflicts
  dontInstallManpages = true;
}
