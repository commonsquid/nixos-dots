{ config, pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;
    settings = {
      background = {
        monitor = "";
        path = "~/Pictures/Wallpapers/gruvbox-rainbow-nix.png";
        blur_passes = 2;
        contrast = 1;
        vibrancy = 0.2;
        vibrancy_darkness = 0.2;
      };
      general = {
        no_fade_in = false;
        no_fade_out = false;
        hide_cursor = false;
        grace = 0;
        disable_loading_bar = false;
      };
      input-field = {
        monitor = "";
        size = "250, 60";
        outline_thickness = 2;
        dots_size = 0.2;
        dots_spacing = 0.35;
        dots_center = true;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(0, 0, 0, 0.2)";
        font_color = "rgb(209, 207, 207)";
        fade_on_empty = false;
        rounding = 10;
        fail_color = "rgba(191, 97, 106, 0.75)";
        check_color = "rgba(235, 203, 139, 0.75)";
        placeholder_text = "<span foreground=\"##cdd6f4\">password</span>";
        hide_input = false;
        position = "0, -400";
        halign = "center";
        valign = "center";
      };
      label = [
        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date +"%A, %B %d")"'';
          color = "rgba(209, 207, 207, 0.75)";
          font_size = 22;
          font_family = "JetBrains Mono";
          position = "0, 300";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date +"%I:%M %p")"'';
          color = "rgba(209, 207, 207, 0.75)";
          font_size = 95;
          font_family = "JetBrains Mono Extrabold";
          position = "0, 200";
          halign = "center";
          valign = "center";
        }
      ];
      image = {
        monitor = "";
        path = "~/Pictures/i-say-shark.png";
        size = 100;
        border_size = 3;
        rounding = 64;
        border_color = "rgb(133, 180, 234)";
        position = "0, -100";
        halign = "center";
        valign = "center";
      };
    };
  };
}
