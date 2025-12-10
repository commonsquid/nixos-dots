{ config, pkgs, ... }:

{
  services = {
    xserver.xkb = {
      layout = "us";
      variant = "";
    };

    power-profiles-daemon.enable = true;
    upower.enable = true;

    logind.settings = {
      Login = {
        lidSwitch = "suspend";
        lidSwitchDocked = "ignore";
        lidSwitchExternalPower = "suspend";
      };  
    };

    displayManager.ly = {
      enable = true;
      settings = {
        default_session_command = "niri-session";
      };
    };
  };

  systemd.user.services.hypridle = {
    description = "Hypridle idle daemon";
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.hypridle}/bin/hypridle";
      Restart = "on-failure";
    };
  };
}
