{ config, pkgs, lib, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    btop = "btop";
    fastfetch = "fastfetch";
    ghostty = "ghostty";
    niri = "niri";
    nvim = "nvim";
    yazi = "yazi";
    "starship.toml" = "starship.toml";
  };
in

{
  xdg.configFile = builtins.mapAttrs (name: subpath: {
    source = create_symlink "${dotfiles}/${subpath}";
    recursive = true;
  }) configs;
}
