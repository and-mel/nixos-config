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
      # Powerlevel10k
      if [ -n "$DISPLAY" ]; then
        source ~/.p10k.zsh
      fi

      # Start UWSM
      if uwsm check may-start > /dev/null && uwsm select; then
        exec systemd-cat -t uwsm_start uwsm start default
      fi
    '';
  };
}
