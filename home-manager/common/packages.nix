{pkgs, ...}: {
  home.packages = with pkgs; [
    firefox
    evince
    cinnamon.nemo
    keepassxc
    spotify
    virt-manager
    gparted
    pdfsam-basic
    xfce.ristretto
    xfce.tumbler
    libreoffice
    pavucontrol
    flameshot
    gnome.seahorse
    drawio
    gimp
    wireshark
    tigervnc

    shfmt
    cargo
    rustc
    rustfmt
    gcc
    gnumake
    go
    gopls
    go-outline
    nil
    alejandra

    grpcurl
    deploy-rs
    niv
    git
    openssh
    arp-scan
    qemu
    kubectl
    wireguard-tools
    kubernetes-helm
    openssl
    kubectx
    sops
    age
    minikube
    udisks
    pinentry
    gnupg
    texlive.combined.scheme-medium
    brightnessctl
    jq
    file
    zsh
    alacritty
    any-nix-shell
  ];
}
