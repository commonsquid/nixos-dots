{ pkgs, lib, config, ... }:

{
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
    extraCompatPackages = [ pkgs.protonup-ng ];
  };  

  programs.gamemode = {
    enable = true;
    settings = {
      general = {
        renice = 10;
      };
      gpu = {
        apply_gpu_optimisations = "accept-responsibility";
        gpu_device = 0;
        amd_performance_level = "high";
      };
    };
  }; 

  environment.sessionVariables = {
    STEAM_EXTRA_COMPATIBILITY_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };
}
