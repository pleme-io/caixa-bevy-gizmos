# nix/modules/darwin.nix — auto-generated from bevy_gizmos.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_gizmos; in {
  options.services.bevy_gizmos = {
    enable = lib.mkEnableOption "bevy_gizmos";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_gizmos or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
