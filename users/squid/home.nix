{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    ./modules/hyprlock.nix
    ./modules/power.nix
    ./modules/programs.nix
    ./modules/shell.nix
    ./modules/xdg.nix
  ];
  home = { 
    username = "squid";
    homeDirectory = "/home/squid";
    stateVersion = "25.11";
  };
}
