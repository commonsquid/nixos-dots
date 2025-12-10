{ config, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    SUDO_EDITOR = "nvim";
  };
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };
  programs.fish = {
    enable = true;
    shellInit = ''
      set fish_greeting
    '';  
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#minisquid";
      n = "nvim";
      se = "sudo -E nvim";
    };
  };
}
