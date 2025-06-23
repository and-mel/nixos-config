{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = false;
    profiles.default = {
      enableUpdateCheck = false;
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        redhat.java
        ms-python.python
      ];
      userSettings = {
        "editor" = {
          "tabSize" = 2;
          "indentSize" = "tabSize";
          "formatOnSave" = true;
        };
        "nix" = {
          "enableLanguageServer" = true;
          "serverPath" = "nil"; # or "nixd"
          "formatterPath" = "nixfmt";
          "hiddenLanguageServerErrors" = [
            "textDocument/definition"
            "textDocument/documentSymbol"
          ];
          # LSP config can be passed via the ``nix.serverSettings.{lsp}`` as shown below.
          "serverSettings" = {
            "nil" = {
              "diagnostics" = {
                "ignored" = [
                  "unused_binding"
                  "unused_with"
                ];
              };
              "formatting" = {
                "command" = [ "nixfmt" ];
              };
            };
            "nixd" = {
              "formatting" = {
                "command" = [ "nixfmt" ];
              };
            };
          };
        };
        "java.jdt.ls.java.home" = "${pkgs.zulu23}";
      };
    };
  };
}
