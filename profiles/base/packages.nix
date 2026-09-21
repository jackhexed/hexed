{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    git
    wget

    just
    gnumake

    zip
    unzip

    tealdeer

    gnupg
  ];

  programs.whois.enable = true;
}
