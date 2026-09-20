{ config, pkgs, ... }:

{
  home.username = "jackhexed";
  home.homeDirectory = "/home/jackhexed";

  programs.git = {
    enable = true;
    userName = "jackhexed";
    userEmail = "jackhexed@gmail.com";
  };

  programs.alacritty.enable = true;
  programs.bash.enable = true;
}