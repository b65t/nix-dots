{ pkgs, lib, ... }:

{
  home.packages = [pkgs.neofetch];
  home.file.".config/neofetch/config.conf".text = ''
       print_info() {
  #    info title
  #    info underline

  info "\n \n   " distro
  info "\n \n   " kernel
  info "\n \n   " de
  info "\n \n   " shell
  info "\n \n   " term
  info "\n \n   " font
  info "\n \n   " packages
  info "\n \n  󰝚 " song
  info "\n \n   " memory
  info "\n \n   " cpu
  info "\n \n   " gpu

  prin "\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n  $(color 1)  $(color 2) $(color 3) $(color 4) $(color 5) $(color 6) $(color 7) $(color 8)"
  info cols
}

title_fqdn="off"

kernel_shorthand="off"

distro_shorthand="off"
os_arch="off"

uptime_shorthand="on"

memory_percent="off"
memory_unit="mib"

package_managers="on"

shell_path="off"
shell_version="off"

speed_type="bios_limit"
speed_shorthand="off"

cpu_brand="on"
cpu_speed="on"
cpu_cores="logical"
cpu_temp="off"

gpu_brand="on"
gpu_type="all"

refresh_rate="off"

gtk_shorthand="off"
gtk2="on"
gtk3="on"

public_ip_host="http://ident.me"
public_ip_timeout=2

de_version="on"

disk_show=('/')
disk_subtitle="mount"
disk_percent="on"

music_player="auto"
song_format="%artist% - %album% - %title%"
song_shorthand="off"
mpc_args=()

colors=(4 7 7 4 4 7)

bold="on"
underline_enabled="on"
underline_char="-"
separator=""

block_range=(0 15)
color_blocks="off"
block_width=3
block_height=1

col_offset="auto"

bar_char_elapsed="-"
bar_char_total="="
bar_border="on"
bar_length=15
bar_color_elapsed="distro"
bar_color_total="distro"

cpu_display="off"
memory_display="off"
battery_display="off"
disk_display="off"

image_backend="kitty"                                  # 'ascii', 'caca', 'chafa', 'jp2a', 'iterm2', 'off', 'pot', 'termpix', 'pixterm', 'tycat', 'w3m', 'kitty'
image_source="$HOME/.nix/images/fetch/cirno-nixos.png" # 'ascii', 'wallpaper', '/path/to/img', '/path/to/ascii', '/path/to/dir/' # with backend "kitty"

#ascii_distro="nixos_small" # 'auto', for some: '{distro name}_old', '{distro name}_small', flavors of Ubuntu
#ascii_colors=(distro)
#ascii_bold="on"

thumbnail_dir="$HOME/.nix/home/programs/neofetch/"
crop_mode="normal"   # 'normal', 'fit', 'fill'
crop_offset="center" # 'northwest', 'north', 'northeast', 'west', 'center', 'east', 'southwest', 'south', 'southeast'
image_size="15%"     # '00px', '00%'
gap=5               # gap between image and text
  '';
}
