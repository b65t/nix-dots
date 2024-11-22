{ pkgs, lib, ... }:

{

 wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    extraConfig = ''
    
# MONITORS

monitor=,preferred,auto,1

# MY PROGRAMS 

$terminal = kitty
$fileManager = Files
$menu = rofi -show drun



# ENVIRONMENT VARIABLES

env = XCURSOR_SIZE,24
env = HYPRCURSOR_SIZE,24


# LOOK AND FEEL

general { 
    gaps_in = 5
    gaps_out = 10

    border_size = 2

    col.active_border = rgba(a5adceff) 
    col.inactive_border = rgba(595959aa)

    resize_on_border = false 

    allow_tearing = false

    layout = dwindle
}

decoration {
    rounding = 8

    active_opacity = 1.0
    inactive_opacity = 1.0


    shadow {
    enabled = true
    range = 3
    render_power = 2
   # col.shadow = rgba(1a1a1aee)
  }
    blur {
        enabled = true
        size = 3
        passes = 3

        new_optimizations = on
        ignore_opacity = on

        vibrancy = 0.1696
    }
}

animations {
    enabled = true

    bezier = myBezier, 0.05, 0.9, 0.1, 1.05

    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, default, popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 8, default
    animation = fade, 1, 7, default
    animation = workspaces, 1, 6, default
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
bind = $mainMod, W, exec, pkill rofi || ~/.nix/home/desktop/wayland/hyprland/swww-switcher.sh

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

# Example windowrule v2
# windowrulev2 = float,class:^(kitty)$,title:^(kitty)$

windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.

#auto startup

# exec-once=hyprpaper &
exec-once=waybar &
exec-once=dunst &
exec-once=hypridle &
exec-once=swww-daemon --format xrgb

#screen shot
bind = , print, exec, grim $HOME/Pictures/Screenshots/$(date +'%s_grim.png')

#blur

layerrule = blur, waybar
layerrule = ignorezero, waybar
layerrule = blurpopups, waybar

layerrule = blur, rofi
layerrule = ignorezero, rofi
layerrule = blurpopups, rofi

layerrule = blur, dunst
layerrule = ignorezero, dunst
layerrule = blurpopups, dunst

windowrulev2 = opacity 0.80 0.80,class:^(firefox)$
windowrulev2 = opacity 0.70 0.70,class:^(Spotify)$
windowrulev2 = opacity 0.80 0.80,class:^(discord)$
windowrulev2 = opacity 0.80 .080,class:^(vesktop)$
 '';
 };
}
