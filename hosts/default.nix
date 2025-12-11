{
    imports = [
    ] ++ lib.optional (builtins.pathExists ./laptop/hardware-configuration.nix) ./laptop/hardware-configuration.nix;
}
