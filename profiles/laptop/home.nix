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
}
