{ ... }:

{
  imports = [
    ../base/os.nix
    ../../modules/noctalia/os.nix
  ];

  services.gnome.gnome-keyring.enable = true;
  programs.seahorse.enable = true;

  security.pam.services.greetd.enableGnomeKeyring = true;
  security.pam.services.passwd.enableGnomeKeyring = true;
}
