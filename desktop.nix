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

  # Input remapper
  services.input-remapper.enable = true;
  
  # Packages list
  environment.systemPackages = with pkgs; [
     fresh-editor
     kitty
     git
     python3
     steam
     _7zz
     input-remapper
     gh
     rustup
  ];
}