{
  programs.nixcord = {
    enable = true;
    discord.enable = false;
    vesktop.enable = true;
    quickCss = ":root{--font-primary:'JetBrainsMono Nerd Font', monospace !important;--font-display:'.', 'Noto Sans', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif !important;--font-size:14px;*:not([class*='hljs']):not(code){font-size:var(--font-size) !important}}";

    config = {
      useQuickCss = true;

      plugins = {
        accountPanelServerProfile.enable = true;
        betterUploadButton.enable = true;
        biggerStreamPreview.enable = true;
        clearURLs.enable = true;
        crashHandler.enable = true;
        experiments.enable = true;
        forceOwnerCrown.enable = true;
        friendsSince.enable = true;
        implicitRelationships.enable = true;
        memberCount.enable = true;
        newGuildSettings.enable = true;
        noDevtoolsWarning.enable = true;
        onePingPerDM.enable = true;
        permissionsViewer.enable = true;
        plainFolderIcon.enable = true;
        roleColorEverywhere.enable = true;
        serverInfo.enable = true;
        showHiddenThings.enable = true;
        webKeybinds.enable = true;
        webScreenShareFixes.enable = true;
        youtubeAdblock.enable = true;
        permissionFreeWill = {
          enable = true;
          onboarding = true;
        };
        platformIndicators = {
          enable = true;
          badges = false;
          messages = false;
        };
        silentTyping = {
          enable = true;
          contextMenu = false;
          showIcon = false;
        };
      };
    };
  };
}
