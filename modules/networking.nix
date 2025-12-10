{ config, pkgs, ... }:

{
  networking = {
    hostName = "minisquid";
    networkmanager.enable = true;
  };

}
