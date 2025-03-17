{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls -a --color";
      se = "sudoedit";
      hms = "nix run home-manager -- switch --flake $(readlink -f /etc/nixos)#andrei";
      sw = "sudo nixos-rebuild switch --flake $(readlink -f /etc/nixos)#nixos";
      upd = "sudo nixos-rebuild switch --flake $(readlink -f /etc/nixos)#nixos --update";
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
