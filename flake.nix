{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  outputs = { self, nixpkgs, ... }: let 
    pkgs = import nixpkgs { localSystem = { system = "x86_64-linux"; }; };
  in {
    fractal-next = pkgs.fractal-next;
  };
}
