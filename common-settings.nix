{ config, ... }: {
  "security.cert_pinning.enforcement_level" = 0; # MITM allowed for Privoxy
  "accessibility.force_disabled" = 1;
  "browser.cache.disk.enable" = false;
  "browser.cache.offline.enable" = false;
  "browser.link.open_newwindow" = 2;
  "browser.privatebrowsing.autostart" = true;
  "browser.search.searchEnginesURL" = "";
  "browser.startup.homepage" = "about:blank";
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
}
