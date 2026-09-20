{ config, pkgs, ... }:

{
  home.username = "jackhexed";
  home.homeDirectory = "/home/jackhexed";
  home.stateVersion = "26.05";

  programs.git = {
    enable = true;
    user.name = "jackhexed";
    user.email = "jackhexed@gmail.com";
  };

  programs.alacritty.enable = true;
  programs.bash.enable = true;

  programs.noctalia = {
    enable = true;
    systemd.enable = true;

    settings = {
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Catppuccin";
      };
    };
  };

  programs.umbriel = {
    enable = true;
    settings = {
      general.autostart = [ "noctalia" ];
      layout.gap = 5;
      input.keyboard.layout = "us";
      keybinds = {
        "Mod+Q" = "window-close";
        "Mod" = "spawn:noctalia msg panel-toggle launcher";

        "Mod+T" = "spawn:alacritty";
        "Mod+B" = "spawn:firefox";
      };
    }
  };
}
