{ config, pkgs, ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [ 
      "fbcon=rotate:1"
      "video=eDP-1:panel_orientation=right_side_up"
    ];
  };

  fonts.fontconfig = {
    subpixel.rgba = "vbgr";
  };

  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 100;
    priority = 100;
  };

  services.xserver.dpi = 343;
}
