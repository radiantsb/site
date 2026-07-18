#copied from asahis site
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

      shell = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          nodejs
        ];
      };
    in
    {
      devShells."x86_64-linux".default = shell;
    };
}
