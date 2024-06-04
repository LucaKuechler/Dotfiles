{ config, pkgs, ... }:
{
  home.username = "mussweg";
  home.homeDirectory = "/home/mussweg";
  home.stateVersion = "24.05";
  home.packages = [
    pkgs.hello
  ];

  home.file = {

  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      lll = "ls -l";
    };
  };

  programs.home-manager.enable = true;
}
