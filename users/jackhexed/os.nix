{
  pkgs,
  ...
}:

{
  users.users.jackhexed = {
    isNormalUser = true;
    description = "Jack";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };
}
