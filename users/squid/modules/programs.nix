{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    btop
    fastfetch
    filezilla
    firefox
    ghostty
    hypridle
    inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default
    nautilus
    nwg-look
    yazi
  ];
  programs = {
    firefox.enable = true;
    git.enable = true;
    home-manager.enable = true;
  };
}
