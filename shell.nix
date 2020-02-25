#with import (fetchTarball channel:nixos-19.03) {};
# nix-shell -I nixpkgs=/home/genesis/devel/nixpkgs

{ pkgs ? import <nixpkgs> { }, pythonPackages ? pkgs.python3Packages }:

  pkgs.mkShell {
    buildInputs = [
       pythonPackages.numpy
       pythonPackages.scipy
       pythonPackages.jupyterlab
       pythonPackages.pyserial
    ];

  }
