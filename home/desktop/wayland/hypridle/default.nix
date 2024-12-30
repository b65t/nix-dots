{ pkgs, lib, ... }:

{
home.file.".config/hypr/hypridle.conf".text = ''
general {
    lock_cmd = pidof hyprlock || hyprlock       
    before_sleep_cmd = loginctl lock-session    
    after_sleep_cmd = hyprctl dispatch dpms on 
}

listener {
    timeout = 400                                 
    on-timeout = loginctl lock-session            
    }


listener {
    timeout = 430                                
    on-timeout = hyprctl dispatch dpms off        
    on-resume = hyprctl dispatch dpms on          
    }
  '';
}