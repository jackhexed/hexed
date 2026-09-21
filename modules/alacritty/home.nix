{ ... }:

{
  imports = [
    ../terminal/home.nix
  ];

  programs.alacritty.enable = true;
  my.terminal.command = "alacritty";
}
