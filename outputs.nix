inputs:

{
  nixosConfigurations = {
    toothlessfox = import ./hosts/toothlessfox inputs;
  };
}
