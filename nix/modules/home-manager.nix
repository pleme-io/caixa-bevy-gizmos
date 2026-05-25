# nix/modules/home-manager.nix — auto-generated from bevy_gizmos.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_gizmos; in {
  options.programs.bevy_gizmos = {
    enable = lib.mkEnableOption "bevy_gizmos";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_gizmos or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
