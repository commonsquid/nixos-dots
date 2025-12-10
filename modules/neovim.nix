{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ripgrep
    fd
    lua-language-server
    rust-analyzer-unwrapped
    black
    nodejs_22
    gh
  ];

  programs.neovim = {
    enable = true;
    package = pkgs.neovim-unwrapped;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    configure = {
      packages.myVimPackage = with pkgs.vimPlugins; {
        start = [
          vim-nix
          vim-commentary
          vim-surround
        ];
      };
      customRC = ''
        set number=true
        set relativenumber=false
        set tabstop=2
        set shiftwidth=2
        set expandtab
        set mouse=a
        set wrap=true
      '';
    };
  };
}
