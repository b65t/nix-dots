{ config, lib, pkgs, ... }:

{

security.doas.enable = true;
security.sudo.enable = false;
security.doas.extraRules = [{
  users = ["islam"];
    keepEnv = true;
    persist = true;
}];

}
