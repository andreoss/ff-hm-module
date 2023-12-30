{ config, ... }: {
  SearchBar = "separate";
  AppUpdateURL = "file:///dev/null";
  CaptivePortal = false;
  NoDefaultBookmarks = true;
  DisableBuiltinPDFViewer = true;
  PDFjs = { Enabled = false; };
  Permissions = { Locked = true; };
  PictureInPicture = {
    Enabled = false;
    Locked = true;
  };
  DisableFeedbackCommands = true;
  DisableFirefoxAccounts = true;
  DisableFirefoxScreenshots = true;
  DisableFirefoxStudies = true;
  DisableForgetButton = true;
  DisableFormHistory = true;
  DisableMasterPasswordCreation = true;
  DisablePasswordReveal = true;
  DisablePocket = true;
  DisablePrivateBrowsing = true;
  DisableProfileImport = true;
  DisableProfileRefresh = true;
  DisableSafeMode = true;
  DisableSetDesktopBackground = true;
  DisableSystemAddonUpdate = true;
  DisableTelemetry = true;
  Bookmarks = [ ];
  Extensions = {
    "Uninstall" = [
      "google@search.mozilla.org"
      "bing@search.mozilla.org"
      "amazondotcom@search.mozilla.org"
      "ebay@search.mozilla.org"
      "twitter@search.mozilla.org"
    ];
    "Install" = [
      "https://addons.mozilla.org/firefox/downloads/latest/browserpass-ce"
      "https://addons.mozilla.org/firefox/downloads/latest/containerise"
      "https://addons.mozilla.org/firefox/downloads/latest/decentraleyes"
      "https://addons.mozilla.org/firefox/downloads/latest/tridactyl-vim"
      "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin"
      "https://addons.mozilla.org/firefox/downloads/latest/umatrix"
      "https://addons.mozilla.org/firefox/downloads/latest/tab-reloader"
      "https://addons.mozilla.org/firefox/downloads/latest/windows-xp-internet-browser"
      "https://addons.mozilla.org/firefox/downloads/latest/greasemonkey"
      "https://addons.mozilla.org/firefox/downloads/latest/external-application/"
    ];
  };
  ExtensionSettings = { "*" = { installation_mode = "force_installed"; }; };
  NetworkPrediction = false;
  NewTabPage = false;
  OverrideFirstRunPage = "";
  OfferToSaveLogins = false;
  PasswordManagerEnabled = false;
  SearchSuggestEnabled = false;
  SanitizeOnShutdown = {
    Cache = true;
    Cookies = true;
    Downloads = true;
    FormData = true;
    History = true;
    Sessions = true;
    SiteSettings = true;
    OfflineApps = true;
    Locked = true;
  };
  WebsiteFilter = { Block = [ "lenta.ru" ]; };
  SupportMenu = {
    Title = "Github Project";
    URL = "https://github.com/andreoss/ff-hm-module";
    AccessKey = "H";

  };
  SearchEngines = {
    PreventInstalls = true;
    Default = "DuckDuckGo";
    Remove = [ "Google" "Bing" "Amazon.com" "Amazon.es" "eBay" "Twitter" ];
    Add = [ ];
  };
  FirefoxSuggest = {
    "WebSuggestions" = false;
    "SponsoredSuggestions" = false;
    "ImproveSuggest" = false;
    "Locked" = true;
  };
  Homepage = {
    Locked = true;
    URL = config.home.firefox.homePage;
    StartPage = "homepage-locked";
  };
}
