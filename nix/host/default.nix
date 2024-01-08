{ config, pkgs, lib, ... }:

let
  cfg = config.my-os;
in
{
  options.my-os = {
    configPath = lib.mkOption {
      description = "Path to the OS configuration";
      type = lib.types.str;
      default = "/etc/nixos/configuration.nix";
    };
  };

  config = {
    nix.settings.max-jobs = lib.mkDefault 1;
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nix.settings.auto-optimise-store = true;
    nix.settings.warn-dirty = false;
    nix.nixPath = lib.mkDefault [
      "nixos-config=${cfg.configPath}"
      "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
      "/nix/var/nix/profiles/per-user/root/channels"
    ];

    # Set locales and key maps
    i18n.defaultLocale = "en_US.UTF-8";
    console.earlySetup = true;
    console.keyMap = lib.mkDefault "us";
    console.useXkbConfig = config.services.xserver.enable;

    # Monokai Pro theme
    console.colors = [
      "363537"
      "ff6188"
      "a9dc76"
      "ffd866"
      "fc9867"
      "ab9df2"
      "78dce8"
      "fdf9f3"
      "908e8f"
      "ff6188"
      "a9dc76"
      "ffd866"
      "fc9867"
      "ab9df2"
      "78dce8"
      "fdf9f3"
    ];
  };
}