{ 
  pkgs,
  ...
}:

{
  programs.vscode.enable = true;
  programs.vscode.mutableExtensionsDir = true;
  programs.vscode.profiles.Default.mutableUserSettings = true;
  programs.vscode.argvSettings = {
    # "password-store" = "gnome-libsecret";
  };
}