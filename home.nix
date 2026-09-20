{ config, pkgs, ... }:

{
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

  # Compositor. Writes ~/.config/niri/config.kdl and validates it at build time.
  wayland.windowManager.niri = {
    enable = true;

    settings = {
      prefer-no-csd = { };
      screenshot-path = "~/Pictures/Screenshots/%Y-%m-%d %H-%M-%S.png";

      input = {
        keyboard.xkb.layout = "us";
        touchpad = {
          tap = { };
          natural-scroll = { };
        };
      };

      layout.gaps = 8;

      binds = {
        "Mod+Return".spawn = [ "alacritty" ];
        "Mod+B".spawn = [ "firefox" ];
        "Mod+Q".close-window = { };
        "Mod+Shift+E".quit = { };

        "Mod+H".focus-column-left = { };
        "Mod+L".focus-column-right = { };
        "Mod+J".focus-window-down = { };
        "Mod+K".focus-window-up = { };
        "Mod+F".maximize-column = { };

        # Noctalia panels
        "Mod+Space".spawn-sh = "noctalia msg panel-toggle launcher";
        "Mod+S".spawn-sh = "noctalia msg panel-toggle control-center";
        "Mod+Comma".spawn-sh = "noctalia msg settings-toggle";
        "Alt+Tab".spawn-sh = "noctalia msg window-switcher";

        "XF86AudioRaiseVolume" = {
          _props.allow-when-locked = true;
          spawn-sh = "noctalia msg volume-up";
        };
        "XF86AudioLowerVolume" = {
          _props.allow-when-locked = true;
          spawn-sh = "noctalia msg volume-down";
        };
        "XF86AudioMute" = {
          _props.allow-when-locked = true;
          spawn-sh = "noctalia msg volume-mute";
        };
        "XF86MonBrightnessUp".spawn-sh = "noctalia msg brightness-up";
        "XF86MonBrightnessDown".spawn-sh = "noctalia msg brightness-down";
      };

      # Noctalia's own windows (settings, etc.) float.
      _children = [
        {
          window-rule._children = [
            { match._props.app-id = "dev.noctalia.Noctalia"; }
            { open-floating = true; }
          ];
        }
        { debug.honor-xdg-activation-with-invalid-serial = { }; }
      ];
    };
  };

  # Shell/bar. Writes ~/.config/noctalia/config.toml and a user service that is
  # pulled in by graphical-session.target, i.e. started whenever niri starts.
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
