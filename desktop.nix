{ config, pkgs, ...}:
{
  # Allow flatpak apps
  services.flatpak.enable = true;

  # Desktop setup (niri + DMS + optimizations)
  programs.niri.enable = true;
  programs.dms-shell.enable = true;
  programs.dsearch.enable = true;
  programs.gamemode.enable = true;

  # Waydroid config
  virtualisation.waydroid.enable = true;
  # Newer kernel versions may need
  virtualisation.waydroid.package = pkgs.waydroid-nftables;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     syncthing
     fresh-editor
     kitty
     git
     python3
     steam
     vscodium
     rustup
     _7zz
     github-desktop
  ];
}