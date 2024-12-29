{ pkgs, lib, ... }:

{

home.file.".config/fastfetch/config.jsonc".text = ''
{
	"logo": {
	 "type": "kitty",
   "source": "~/.nix/images/fetch/cirno-nixos.png",
	 "width": 17,
   "height": 9
	},
	"display": {
        "separator": " -> "
},
        "modules": [
        "break",
        "title",
	   {
            "type": "os",
            "key": "",
            "format": "{pretty-name}",
            "keyColor": "blue"
        },
	{
	    "type": "kernel",
            "key": "",
            "keyColor": "blue"
        },
	{
	    "type": "packages",
            "key": "󰏖",
            "keyColor": "blue"
        },
	{
            "type": "wm",
            "key": "",
            "keyColor": "blue"
        },
	{
            "type": "shell",
            "key": "",
            "keyColor": "blue"
        },
        {
            "type": "terminal",
            "key": "",
            "keyColor": "blue"
        },
        {
            "type": "custom",
            "format": "  \u001b[90m  \u001b[31m  \u001b[32m  \u001b[33m  \u001b[34m  \u001b[35m  \u001b[36m  \u001b[37m "
        }
    ]
}
'';

}
