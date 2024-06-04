{ config, pkgs, ... }:
{
  home.username = "mussweg";
  home.homeDirectory = "/home/mussweg";
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
    neovim
    jq
    git
    powershell
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  home.file = {

  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      vscodevim.vim
      ms-vscode.powershell
    ];
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ls = "eza --icons -g";
      ll = "eza --icons -lg";
      la = "eza --icons -lag";
    };
  };

  programs.tmux = {
    # TODO: Prevent Default Generation
    enable = true;
    extraConfig = builtins.readFile ../tmux/.tmux.conf;
  };

  programs.zoxide = {
    enable = true;
  };

  programs.bat = {
    enable = true;
  };

  programs.eza = {
    enable = true;
  };

  programs.starship = {
    enable = true;
  };

  programs.alacritty = {
    enable = true;
    settings = {
      font.size = 12;
      env.TERM = "xterm-256color";

      scrolling = {
        history = 10000;
	multiplier = 3;
      };

      selection = {
        save_to_clipboard = true;
      };

      font.normal = {
	family = "Hack Nerd Font Mono";
	style = "Regular";
      };

      colors = {

        bright = {
	  black = "#424242";
          blue = "#54A4F3";
          cyan = "#26BBD1";
          green = "#7ABA3A";
          magenta = "#AA4DBC";
          red = "#E83B3F";
          white = "#D9D9D9";
          yellow = "#FFEA2E";
        };

        normal = {
	  black = "#212121";
	  blue = "#134EB2";
	  cyan = "#0E717C";
   	  green = "#457B24";
  	  magenta = "#560088";
	  red = "#B7141F";
	  white = "#EFEFEF";
  	  yellow = "#F6981E";
	};

	primary = {
	  background = "#111111";
	  foreground = "#E5E5E5";
	};

      	draw_bold_text_with_bright_colors = true;

      };
    };
  };

  programs.home-manager.enable = true;
}
