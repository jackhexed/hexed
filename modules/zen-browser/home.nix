{
  inputs,
  pkgs,
  ...
}:

{
  imports = [
    ../browser/home.nix
  ];

  home.packages = [
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  my.browser.command = "zen";
}
