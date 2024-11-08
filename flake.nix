{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nur.url = "github:nix-community/NUR";
    user-js = {
      url = "github:arkenfox/user.js";
      flake = false;
    };
  };
  description = "firefox hardened configuration";
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      user-js,
      ...
    }:
    {
      overlays.default = final: prev: { };
      homeManagerModules.default =
        {
          config,
          lib,
          pkgs,
          ...
        }:
        {
          options = with lib; {
            home.firefox.homePage = mkOption {
              type = types.str;
              default = "https://lobste.rs";
            };
            home.firefox.enable = mkOption {
              type = types.bool;
              default = true;
            };
          };
          config = {
            home = {
              sessionVariables.DEFAULT_BROWSER = "mozilla";
              file.".local/bin/mozilla" = {
                executable = true;
                text = ''
                  #!/bin/sh
                  exec firejail firefox "$@"
                '';
              };
              packages = with pkgs; [ ];
            };
            programs = {
              browserpass = {
                enable = config.programs.password-store.enable;
                browsers = [ "firefox" ];
              };
              aria2 = {
                enable = true;
                settings = {
                  bt-save-metadata = true;
                  seed-time = 0;
                  seed-ratio = 0.0;
                };
              };

              firefox = lib.mkIf config.home.firefox.enable {
                enable = true;
                profiles."default" = {
                  id = 0;
                  extraConfig = builtins.readFile "${user-js}/user.js";
                  settings = import ./common-settings.nix {
                    config = config;
                    pkgs = pkgs;
                  };
                  extensions = with pkgs.nur.repos.rycee.firefox-addons; [
                    passff
                    brotab
                    ublock-origin
                    umatrix
                    decentraleyes
                    i-auto-fullscreen
                    browserpass
                    localcdn
                    temporary-containers
                    tridactyl
                    istilldontcareaboutcookies
                  ];
                  containers = {
                    "Work I" = {
                      color = "blue";
                      icon = "briefcase";
                      id = 1;
                    };
                    "Work II" = {
                      color = "red";
                      icon = "briefcase";
                      id = 2;
                    };
                    "Work III" = {
                      color = "purple";
                      icon = "briefcase";
                      id = 3;
                    };
                    "Work IV" = {
                      color = "yellow";
                      icon = "briefcase";
                      id = 5;
                    };
                    Edu = {
                      color = "yellow";
                      icon = "chill";
                      id = 6;
                    };
                    Media = {
                      color = "red";
                      icon = "chill";
                      id = 7;
                    };
                    Dangerous = {
                      color = "red";
                      icon = "fruit";
                      id = 1000;
                    };
                  };
                  search = import ./search.nix {
                    config = config;
                    pkgs = pkgs;
                  };
                  bookmarks = [
                    {
                      name = "wikipedia";
                      tags = [ "wiki" ];
                      keyword = "wiki";
                      url = "https://en.wikipedia.org/wiki/Special:Search?search=%s&go=Go";
                    }
                    {
                      name = "kernel.org";
                      url = "https://www.kernel.org";
                    }
                  ];
                };
                package =
                  with pkgs;
                  (firefox-esr.override {
                    extraNativeMessagingHosts = [
                      passff-host
                      browserpass
                    ];
                  });
                policies = import ./policies.nix {
                  config = config;
                  pkgs = pkgs;
                };
              };
            };
          };
        };
    }
    // flake-utils.lib.eachDefaultSystem (
      system:
      let
        systems = lib.systems.flakeExposed;
        lib = nixpkgs.lib;
        eachSystem = lib.genAttrs systems;
      in
      {
        legacyPackages = import nixpkgs { inherit system; };
        packages =
          let
            pkgs = self.legacyPackages.${system};
          in
          { };
      }
    );
}
