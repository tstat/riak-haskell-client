{ compiler ? "ghc843" }:

let riak-haskell-client-overlay =
  let haskell-overrides = self: super:
    with super.haskell.lib; {
      riak-haskell-client = super.callPackage ./default.nix {};
    };
  in self: super:
      {
        haskell = super.haskell // {
          packages = super.haskell.packages // {
            "${compiler}" = super.haskell.packages."${compiler}".override {
              overrides = haskell-overrides;
            };
          };
        };
      };
    pkgs = import <nixpkgs> { overlays = [ riak-haskell-client-overlay ]; };
in with pkgs.haskell.packages."${compiler}"; {
  riak-haskell-client = riak-haskell-client;
}
