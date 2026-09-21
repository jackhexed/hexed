{ ... }:

{
  programs.umbriel.enable = true;

  services.displayManager.noctalia-greeter.enable = true;

  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;
  hardware.bluetooth.enable = true;
}
