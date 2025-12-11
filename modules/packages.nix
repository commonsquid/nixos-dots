{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    gamemode
    gnome-themes-extra
    gruvbox-dark-gtk
    gruvbox-gtk-theme
    gruvbox-material-gtk-theme
    gtk-engine-murrine
    imagemagick
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    megasync
    neovim
    openssh
    python3
    python313Packages.pygments
    pywal16
    pywal
    pywalfox-native
    sassc
    tree
    wget
    unrar
    unzip
    vesktop
    zip
  ];

  programs.fish.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
