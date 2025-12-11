{ config, pkgs, inputs, ... }:

{
  imports = [
    ./boot.nix
    ./desktop.nix
    ./networking.nix
    ./neovim.nix
    ./packages.nix
    ./services.nix
    ./steam.nix
    ];
}
