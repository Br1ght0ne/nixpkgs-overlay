self: pkgs:

let inherit (pkgs) callPackage;
in {
  swaylayout = callPackage ./pkgs/swaylayout { };

}
