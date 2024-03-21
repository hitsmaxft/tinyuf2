{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    gcc-arm-embedded
    nodejs protobuf cmake pico-sdk dfu-util openocd
  ];
}
