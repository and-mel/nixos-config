{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls -a --color";
      se = "sudoedit";
    };

    # zplug = {
    #   enable = true;
    #   plugins = [
    #     { name = "zsh-users/zsh-autosuggestions"; }
    #     { name = "romkatv/powerlevel10k"; }
    #   ];
    # };

    history = {
      size = 5000;
      path = "${config.xdg.dataHome}/.zsh_history";
      ignoreAllDups = true;
      ignoreSpace = true;
    };
  };
}
