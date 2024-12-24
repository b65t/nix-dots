{ pkgs, lib, inputs, ... }:

{
  # ...
  programs.nixcord = {
    enable = true;  # enable Nixcord. Also installs discord package
    quickCss = "some CSS";  # quickCSS file
    config = {
      useQuickCss = true;   # use out quickCSS
      themeLinks = [        # or use an online theme
        "https://catppuccin.github.io/discord/dist/catppuccin-mocha.theme.css"
      ];
      frameless = true;
      plugins = {
        hideAttachments.enable = true;    # Enable a Vencord plugin
	youtubeAdblock.enable = true;
	fakeNitro.enable = true;
	blurNSFW.enable = true;
	emoteCloner.enable = true;
	imageZoom.enable = true;
	noBlockedMessages = {
          enable = true;
	  ignoreBlockedMessages = true;
         };
	 noUnblockToJump.enable = true;
	 openInApp.enable = true;
	 spotifyCrack.enable = true;
	 typingTweaks.enable = true;

        };
      };
    };
}
