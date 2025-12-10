{ config, pkgs, ... }:

{
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "loginctl lock-session";
        after_sleep_cmd = "niri msg action power-on-monitors";
      };
      listener = [
        {
          timeout = 150;
          on-timeout = "brightnessctl -s set 10";
          on-resume = "brightnessctl -r";
        }
        {
          timeout = 300;
          on-timeout = "loginctl lock-session";
        }
        {
          timeout = 600;
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };

  systemd.user.services.hyprlock-on-lid = {
    Unit = {
      Description = "Lock with hyprlock before suspend";
      Before = [ "sleep.target" ];
    };
    Service = {
      Type = "forking";
      ExecStart = "${pkgs.hyprlock}/bin/hyprlock";
    };
    Install = {
      WantedBy = [ "sleep.target" ];
    };
  };
}
