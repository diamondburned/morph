# This file was generated by https://github.com/kamilchm/go2nix v2.0-dev
{ pkgs, stdenv, buildGoPackage, fetchFromGitHub, ... }:
with import <nixpkgs> {};

buildGoPackage rec {
  name = "go2nix-${version}";
  version = "v1.2.1";

  goPackagePath = "github.com/kamilchm/go2nix";

  src = fetchFromGitHub {
    owner = "kamilchm";
    repo = "go2nix";
    rev = version;
    sha256 = "0fr9aa50yvchfhv6h6zqblx8ynxk41i2hmv87b344zr2rz6rms72";
  };

  goDeps = ./go2nix-deps.nix;

  meta = {
    homepage = "https://github.com/kamilchm/go2nix";
    description = "Reproducible builds and development environment for Go";
  };
}
