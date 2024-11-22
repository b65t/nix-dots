{ config, lib, pkgs, ... }:

{

nixpkgs = {
  config = {
    allowUnfree = true;
   };
  };

home.packages = with pkgs; [

qemu_full
virt-manager
virt-viewer
dnsmasq
vde2
bridge-utils
netcat-openbsd
dmidecode

];

}
