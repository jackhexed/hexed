{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.umbriel.homeModules.default

    ../terminal/home.nix
    ../browser/home.nix
  ];

  programs.umbriel = {
    enable = true;
    settings = {
      general.autostart = [ "noctalia" ];
      layout.gap = 5;
      input.keyboard.layout = "us";
      keybinds = {
        "Mod+Q" = "window-close";
        "Mod" = "spawn:noctalia msg panel-toggle launcher";

        "Mod+Return" = "spawn:${config.my.terminal.command}";
        "Mod+B" = "spawn:${config.my.browser.command}";
      };
    };
  };

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
}
