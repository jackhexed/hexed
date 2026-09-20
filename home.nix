{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.umbriel.homeModules.default
  ];

  home.username = "jackhexed";
  home.homeDirectory = "/home/jackhexed";
  home.stateVersion = "26.05";

  programs.git = {
    enable = true;
    userName = "jackhexed";
    userEmail = "jackhexed@gmail.com";
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
    package = pkgs.umbriel;
    settings = {
      output.eDP-1.scale = 1.5;
      general.autostart = [ "noctalia" ];
      layout.gap = 5;
      input.keyboard.layout = "us";
      keybinds = {
        "Mod+Q" = "window-close";
        "Mod" = "spawn:noctalia msg panel-toggle launcher";

        "Mod+Return" = "spawn:alacritty";
        "Mod+B" = "spawn:firefox";
      };
    };
  };
}
