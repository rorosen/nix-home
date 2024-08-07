{ pkgs, ... }:
{
  programs.nixvim.plugins.floaterm = {
    enable = true;
    width = 0.8;
    height = 0.8;
    shell = "${pkgs.zsh}/bin/zsh";
    keymaps.toggle = "<leader>,";
  };
}
