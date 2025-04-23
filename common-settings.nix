{ config, ... }:
{
  "browser.startup.homepage" = "about:blank";

  "security.cert_pinning.enforcement_level" = 1;
  "accessibility.force_disabled" = 1;
  "browser.cache.disk.enable" = false;
  "browser.cache.offline.enable" = false;
  "browser.link.open_newwindow" = 2;
  "browser.privatebrowsing.autostart" = true;
  "browser.search.searchEnginesURL" = "";
  "browser.tabs.tabMinWidth" = 16;
  "browser.uidensity" = 1;
  "extensions.abuseReport.enabled" = false;
  "full-screen-api.ignore-widgets" = true;
  "privacy.clearOnShutdown.offlineApps" = true;
  "privacy.clearOnShutdown.siteSettings" = true;
  "privacy.cpd.offlineApps" = true;
  "privacy.cpd.passwords" = true;
  "privacy.cpd.siteSettings" = true;
  "signon.rememberSignons" = false;
  "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
  "font.default.x-western" = "Terminus";
  "font.name.monospace.x-western" = "Terminus";
  "font.name.sans-serif.x-western" = "Terminus";
  "font.name.serif.x-western" = "Terminus";
  "browser.translations.panelShown" = false;
  "browser.uiCustomization.state" = builtins.toJSON {
    currentVersion = 20;
    newElementCount = 5;
    dirtyAreaCache = [
      "nav-bar"
      "PersonalToolbar"
      "toolbar-menubar"
      "TabsToolbar"
      "widget-overflow-fixed-list"
    ];
    placements = {
      PersonalToolbar = [ "personal-bookmarks" ];
      TabsToolbar = [
        "tabbrowser-tabs"
        "new-tab-button"
        "alltabs-button"
      ];
      nav-bar = [
        "back-button"
        "forward-button"
        "stop-reload-button"
        "urlbar-container"
        "downloads-button"
        "ublock0_raymondhill_net-browser-action"
        "_testpilot-containers-browser-action"
        "reset-pbm-toolbar-button"
        "unified-extensions-button"
      ];
      toolbar-menubar = [ "menubar-items" ];
      unified-extensions-area = [ ];
      widget-overflow-fixed-list = [ ];
    };
    seen = [
      "save-to-pocket-button"
      "developer-button"
      "ublock0_raymondhill_net-browser-action"
      "_testpilot-containers-browser-action"
    ];
  };
}
