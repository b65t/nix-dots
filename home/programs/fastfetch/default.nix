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
        "separator": " -> ",
	  "constants": [
            " "
        ]
},
        "modules": [
	{
            "type": "os",
            "key": "{$1}",
            "keyColor": "blue"
        },
	{
	    "type": "kernel",
            "key": "{$1}",
            "keyColor": "cyan"
        },
	{
	    "type": "packages",
            "key": "{$1}󰏖",
            "keyColor": "red"
        },
	{
            "type": "wm",
            "key": "{$1}",
            "keyColor": "yellow"
        },
	{
            "type": "shell",
            "key": "{$1}",
            "keyColor": "green"
        },
        {
            "type": "terminal",
            "key": "{$1}",
            "keyColor": "Magenta"
        }
    ]
}
'';

}
