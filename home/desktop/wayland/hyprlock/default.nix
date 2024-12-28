{ pkgs, lib, ... }:

{
    programs.hyprlock = {
        enable = true;
	extraConfig = ''
source = /home/islam/.cache/wal/colors-hyprland.conf

general {
  disable_loading_bar = false
  hide_cursor = true
  text_trim = true
}

background {
    monitor = VGA-1
    path = screenshot
    blur_passes = 4
    blur_passes = 3
}

input-field {
    monitor = VGA-1
    size = 250, 60
    outer_color = rgba(0, 0, 0, 1)
    dots_size = 0.2
    dots_spacing = 1 
    dots_center = true
    inner_color = $backgroundCol
    font_color = $foregroundCol
    check_color = $color2
    Fail_color = rgba(fb4934ff)
    outer_color = rgba(0, 0, 0, 0)
    fade_on_empty = false
    font_family = NotoSans Nerd Font
    placeholder_text = <span foreground="##ffffff">  $USER</span>
    hide_input = false
    shadow_passes = 3
    shadow_size = 3
    position = 0, -150
    halign = center
    valign = center
}

# Clock label settings
label {
    text = cmd[update:1000] echo -e "$(date +"%H")"
    color = $color1
    font_size = 70
    font_family = AlfaSlabOne
    position = 0, -220
    halign = center
    valign = top
    shadow_passes = 3
    shadow_size = 1
}
label {
    text = cmd[update:1000] echo -e "$(date +"%M")"
    color = $foreground
    font_size = 70
    font_family = AlfaSlabOne
    position = 0, -300
    halign = center
    valign = top
    shadow_passes = 3
    shadow_size = 1
}

# Month-Date
label {
    monitor =
    text = cmd[update:1000] echo "<span>$(date '+%d %B')</span>"
    color = $color1
    font_size = 30
    font_family = AlfaSlabOne
    shadow_passes = 3
    shadow_size = 1
    position = 0, -50
    halign = center
    valign = center
}

image {
    monitor =
    path = /home/islam/.nix/images/profile/pp1.jpg
    size = 120
    rounding = -1
    border_size = 0
    shadow_passes = 3
    shadow_size = 3
    halign = center
    valign = center
    position = 0, -290
}
'';
  };
}
