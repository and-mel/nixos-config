{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
    ];
    userSettings = {
      "editor" = {
        "tabSize" = 2;
        "indentSize" = "tabSize";
        "formatOnSave" = true;
      };
      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nil"; # or "nixd"
      "nix.formatterPath" = "nixfmt";
      "nix.hiddenLanguageServerErrors" = [
        "textDocument/definition"
      ];
      # LSP config can be passed via the ``nix.serverSettings.{lsp}`` as shown below.
      "nix.serverSettings" = {
        # check https://github.com/oxalica/nil/blob/main/docs/configuration.md for all options available
        "nil" = {
          # "diagnostics" = {
          #  "ignored" = ["unused_binding" "unused_with"];
          # };
          "formatting" = {
            "command" = [ "nixfmt" ];
          };
        };
        # check https://github.com/nix-community/nixd/blob/main/nixd/docs/configuration.md for all nixd config
        "nixd" = {
          "formatting" = {
            "command" = [ "nixfmt" ];
          };
          # "options" = {
          #     # By default, this entry will be read from `import <nixpkgs> { }`.
          #     # You can write arbitrary Nix expressions here, to produce valid "options" declaration result.
          #     # Tip: for flake-based configuration, utilize `builtins.getFlake`
          #     "nixos" = {
          #     "expr" = "(builtins.getFlake \"/absolute/path/to/flake\").nixosConfigurations.<name>.options";
          #     };
          #     "home-manager" = {
          #     "expr" = "(builtins.getFlake \"/absolute/path/to/flake\").homeConfigurations.<name>.options";
          #     };
          #     # Tip: use ${workspaceFolder} variable to define path
          #     "nix-darwin" = {
          #     "expr" = "(builtins.getFlake \"${workspaceFolder}/path/to/flake\").darwinConfigurations.<name>.options";
          #     };
          # };
        };
      };
    };
  };
}
