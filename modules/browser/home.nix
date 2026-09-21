{
  config,
  lib,
  ...
}:

{
  options.my.browser.command = lib.mkOption {
    type = lib.types.nullOr lib.types.str;
    default = null;
    description = "The command to launch the web browser.";
  };

  config = lib.mkIf (config.my.browser.command != null) {
    home.sessionVariables.BROWSER = config.my.browser.command;
  };
}
