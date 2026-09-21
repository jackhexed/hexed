{ 
  pkgs,
  ...
}:

{
  programs.vscode.enable = true;
  programs.vscode.argvSettings = {
    "password-store" = "gnome-libsecret";
  };
}