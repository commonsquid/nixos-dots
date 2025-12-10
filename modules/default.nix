{ config, pkgs, inputs, ... }:

{
  imports = [
    ./boot.nix
    ./desktop.nix
    ./locale.nix
    ./networking.nix
    ./neovim.nix
    ./noctalia.nix
    ./packages.nix
    ./services.nix
    ./steam.nix
    ];
}
