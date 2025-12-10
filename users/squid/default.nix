{ config, pkgs, lib, ... }:

{
    home-manager.users.squid = import ./home.nix;
}
