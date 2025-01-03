{ pkgs, lib, ... }:

{

 wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    extraConfig = ''
 source = /home/islam/.cache/wal/colors-hyprland.conf

# MONITORS

monitor=,preferred,auto,1

# MY PROGRAMS 

$terminal = kitty
$fileManager = nemo
$menu = rofi -show drun
$browser = firefox
$background = waypaper


# ENVIRONMENT VARIABLES

env = XCURSOR_SIZE,24
env = XCURSOR_THEME,Frieren-Winter
env = HYPRCURSOR_THEME,Frieren-Winter
env = HYPRCURSOR_SIZE,24

# LOOK AND FEEL

general { 
    gaps_in = 5
    gaps_out = 10

    border_size = 2

    col.active_border = $color1
    col.inactive_border = rgba(595959aa)

    resize_on_border = false

    allow_tearing = false

    layout = dwindle
}

decoration {
    rounding = 10

    active_opacity = 1
    inactive_opacity = 1


    shadow {
        enabled = true
        range = 4
        render_power = 0
        #scale = 0.999
        color = $backgroundCol
        #color_inactive = 0xee
  }
    blur {
        enabled = true
        size = 6
        passes = 2

        new_optimizations = on
        ignore_opacity = on
    }
}

animations {
    enabled = true

    bezier = easeOutQuint,0.23,1,0.32,1
    bezier = easeInOutCubic,0.65,0.05,0.36,1
    bezier = linear,0,0,1,1
    bezier = almostLinear,0.5,0.5,0.75,1.0
    bezier = quick,0.15,0,0.1,1
    bezier = over, 0.13, 0.99, 0.29, 1.07 

    animation = global, 1, 10, default
    animation = border, 1, 5.39, easeOutQuint
    animation = windows, 1, 4.79, over, slide
    animation = windowsIn, 1, 4.1, over, slide
    animation = windowsOut, 1, 1.49, over, slide
    animation = fadeIn, 1, 1.73, almostLinear
    animation = fadeOut, 1, 1.46, almostLinear
    animation = fade, 1, 3.03, quick
    animation = layers, 1, 3.81, easeOutQuint
    animation = layersIn, 1, 4, easeOutQuint,
    animation = layersOut, 1, 1.5, linear,
    animation = fadeLayersIn, 1, 1.79, almostLinear
    animation = fadeLayersOut, 1, 1.39, almostLinear
    animation = workspaces, 1, 1.94, default
    animation = workspacesIn, 1, 1.21, default
    animation = workspacesOut, 1, 1.94, default

  }

dwindle {
    pseudotile = true # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = true # You probably want this
}

# master {
#    new_is_master = true
# }

misc { 
    force_default_wallpaper = -1 # Set to 0 or 1 to disable the anime mascot wallpapers
    disable_hyprland_logo = true # If true disables the random hyprland logo / anime girl background. :(
    middle_click_paste = false
}



### INPUT

input {
    kb_layout = us,ara
    kb_variant =
    kb_model =
    kb_options = grp:alt_shift_toggle
    kb_rules =

    follow_mouse = 1

    sensitivity = 0 # -1.0 - 1.0, 0 means no modification.

    touchpad {
        natural_scroll = false
    }
}

gestures {
    workspace_swipe = false
}

device {
    name = epic-mouse-v1
    sensitivity = -0.5
}


# KEYBINDINGSS 

$mainMod = SUPER # Sets "Windows" key as main modifier

bind = $mainMod, Q, exec, $terminal
bind = $mainMod, C, killactive,
bind = $mainMod, M, exit,
bind = $mainMod, E, exec, $fileManager
bind = $mainMod, V, togglefloating,
bind = $mainMod, R, exec, $menu
bind = $mainMod, P, pseudo, # dwindle
bind = $mainMod, J, togglesplit, # dwindle
bind = $mainMod, W, exec, $background
bind = $mainMod, B, exec, $browser

# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Example special workspace (scratchpad)
bind = $mainMod, S, togglespecialworkspace, magic
bind = $mainMod SHIFT, S, movetoworkspace, special:magic

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow


##############################
### WINDOWS AND WORKSPACES ###
##############################

# See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
# See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules

# Example windowrule v1
# windowrule = float, ^(kitty)$
#windowrule = float, ^(waypaper)$
#windowrule = float, ^(nm-connection-editor)$
#windowrule = float, ^(nemo)$

# Example windowrule v2
# windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
windowrulev2 = float,class:^(waypaper)$
windowrulev2 = float,class:^(nm-connection-editor)$
windowrulev2 = float,class:^(nemo)$
windowrulev2 = float,class:^(nwg-look)$

# windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.

#auto startup

# exec-once=hyprpaper &
exec-once=waypaper --restore
exec-once=waybar &
exec-once=swaync &
exec-once=hypridle &
exec-once=swww-daemon --format xrgb

#screen shot
bind = , print, exec, ~/.nix/scripts/screenshot/screenshot.sh
bind = $mainMod, print, exec, ~/.nix/scripts/screenshot/partial-screenshot.sh

#blur

#layerrule = blur, waybar
#layerrule = ignorezero, waybar
#layerrule = blurpopups, waybar

#layerrule = blur, rofi
#layerrule = ignorezero, rofi
#layerrule = blurpopups, rofi

windowrulev2 = opacity 0.90 0.90,class:^(firefox)$
windowrulev2 = opacity 0.80 0.80,class:^(Spotify)$
windowrulev2 = opacity 0.82 0.82,class:^(discord)$
windowrulev2 = opacity 0.80 0.80,class:^(waypaper)$
windowrulev2 = opacity 0.80 0.80,class:^(VSCodium)$
windowrulev2 = opacity 0.80 0.80,class:^(nemo)$
 '';
 };
}
