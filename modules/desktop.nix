{ config, pkgs, inputs, ... }:

{
  programs.niri = {
    enable = true;
    package = inputs.niri.packages.${pkgs.system}.niri;
  };  

  users.users.squid = {
    isNormalUser = true;
    description = "Brandon";
    extraGroups = [ "audio" "networkmanager" "video" "wheel" ];
    shell = pkgs.fish;
  };
}
