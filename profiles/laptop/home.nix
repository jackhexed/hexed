{
  pkgs,
  ...
}:

{
  imports = [
    ../base/home.nix
    ../../modules/noctalia/home.nix
    ../../modules/alacritty/home.nix
    ../../modules/zen-browser/home.nix
    ../../modules/vscode/home.nix
  ];

  services.gnome-keyring.enable = true;
  services.gnome-keyring.components = [ "secrets" ];

  home.packages = with pkgs; [
    seahorse
  ];
}
