{ ... }:

{
  imports = [
    ./boot.nix
    ./network.nix
    ./nix.nix
    ./packages.nix
    ./shells.nix
  ];

  i18n.defaultLocale = "en_US.UTF-8";
}
