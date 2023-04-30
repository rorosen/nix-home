{ pkgs, ... }:

{
  imports = [
    ./home.nix
    ./sway
    ./waybar
    ./wofi
    ./swaylock.nix
    ./electron-wayland.nix
  ];

  home.packages = with pkgs; [
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    grim
  ];

  programs.bash = {
    enable = true;
    profileExtra = ''
      export SDL_VIDEODRIVER=wayland
      export _JAVA_AWT_WM_NONREPARENTING=1
      export QT_QPA_PLATFORM=wayland
      export XDG_CURRENT_DESKTOP=sway
      export XDG_SESSION_DESKTOP=sway
      export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
      [ "$(tty)" = "/dev/tty1" ] && exec ${pkgs.sway}/bin/sway
    '';
  };
}
