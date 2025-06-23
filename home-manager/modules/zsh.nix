{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh.enable = false;

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

    initContent = ''
      # Powerlevel10k
      source ~/.p10k.zsh

      exec fortune -s | cowsay

      # Start UWSM
      if uwsm check may-start; then
        exec uwsm start -S hyprland-uwsm.desktop
      fi
    '';
  };
}
