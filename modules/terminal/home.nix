{
  config,
  lib,
  ...
}:

{
  options.my.terminal.command = lib.mkOption {
    type = lib.types.nullOr lib.types.str;
    default = null;
    description = "The command to launch the terminal emulator.";
  };

  config = lib.mkIf (config.my.terminal.command != null) {
    home.sessionVariables.TERMINAL = config.my.terminal.command;
  };
}
