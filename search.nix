{ config, pkgs, ... }:
{
  force = true;
  default = "ddg";
  privateDefault = "ddg";
  order = [
    "ddg"
    "ya"
  ];
  force = true;
  engines = {
    bing.metaData.hidden = true;
    google.metaData.hidden = true;
    "Nix Packages" = {
      urls = [
        {
          template = "https://search.nixos.org/packages";
          params = [
            {
              name = "type";
              value = "packages";
            }
            {
              name = "query";
              value = "{searchTerms}";
            }
          ];
        }
      ];
      icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      definedAliases = [ "@np" ];
    };

  };
}
