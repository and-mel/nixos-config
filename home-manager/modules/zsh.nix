{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls -a --color";
      se = "sudoedit";
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    history = {
      size = 5000;
      path = "${config.xdg.dataHome}/.zsh_history";
      ignoreAllDups = true;
      ignoreSpace = true;
    };

    initExtra = ''
      source ~/.p10k.zsh
    '';
  };
}
