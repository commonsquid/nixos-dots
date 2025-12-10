{ config, pkgs, ... }:

{
  imports = [
    ./hosts/laptop
    ./users/squid
    ./modules
  ];

  hardware = {
    steam-hardware.enable = true;
    bluetooth.enable = true;
  };

  security.pam.services.hyprlock = {};

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}
