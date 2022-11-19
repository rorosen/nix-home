{ pkgs, ... }:

{
  # TODO: does not work when using home-manager as a nixos module
  # fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    i3
    polybar
    git
    zsh
    firefox
    vscode
    evince
    alacritty
    networkmanagerapplet
    cinnamon.nemo
    rofi
    any-nix-shell
    killall
    nixpkgs-fmt
    brightnessctl
    spotify
    playerctl
    keepassxc
    nextcloud-client
    freecad
    thunderbird
    betterlockscreen
    shfmt
    signal-desktop
    flameshot
    openssh
    arp-scan
    qemu
    virt-manager
    kubectl
    wireguard-tools
    kubernetes-helm
  ];
}

