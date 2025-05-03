{ config, ... }:
{
  SearchBar = "separate";
  AppUpdateURL = "file:///dev/null";
  CaptivePortal = false;
  NoDefaultBookmarks = true;
  BlockAboutSupport = true;
  BlockAboutProfiles = true;
  DisableBuiltinPDFViewer = true;
  DisplayMenuBar = "never";
  DisplayBookmarksToolbar = "never";
  AutofillCreditCardEnabled = false;
  AutofillAddressEnabled = false;
  DontCheckDefaultBrowser = true;
  EnableTrackingProtection = {
    Value = true;
    Locked = true;
    Cryptomining = true;
    Fingerprinting = true;
    EmailTracking = true;
  };
  DNSOverHTTPS = {
    Enabled = false;
  };
  PDFjs = {
    Enabled = false;
  };
  Permissions = {
    Locked = true;
  };
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
  DisablePasswordReveal = false;
  DisablePocket = true;
  DisablePrivateBrowsing = true;
  DisableProfileImport = true;
  DisableProfileRefresh = true;
  DisableSafeMode = true;
  DisableSetDesktopBackground = true;
  DisableSystemAddonUpdate = true;
  DisableTelemetry = true;
  SkipTermsOfUse = true;
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
      "https://addons.mozilla.org/firefox/downloads/latest/external-application/"
      "https://addons.mozilla.org/firefox/downloads/latest/greasemonkey"
      "https://addons.mozilla.org/firefox/downloads/latest/tab-reloader"
      "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin"
      "https://addons.mozilla.org/firefox/downloads/latest/umatrix"
      "https://addons.mozilla.org/firefox/downloads/latest/windows-xp-internet-browser"
    ];
  };
  ExtensionSettings = {
    "*" = {
      installation_mode = "force_installed";
    };
  };
  NetworkPrediction = false;
  NewTabPage = false;
  OverrideFirstRunPage = "";
  OverridePostUpdatePage = "";
  OfferToSaveLogins = false;
  PasswordManagerEnabled = false;
  SanitizeOnShutdown = {
    Cache = false;
    Cookies = false;
    FormData = false;
    History = false;
    Sessions = false;
    SiteSettings = false;
    Locked = true;
  };
  SearchSuggestEnabled = false;

  WebsiteFilter = {
    Block = [ "*://lenta.ru/*" ];
  };
  ContentAnalysis = {
    Enabled = false;
  };
  UserMessaging = {
    WhatsNew = false;
    ExtensionRecommendations = false;
    FeatureRecommendations = false;
    UrlbarInterventions = false;
    SkipOnboarding = true;
    MoreFromMozilla = false;
    FirefoxLabs = false;
    Locked = false;
  };
  SupportMenu = {
    Title = "Github Project";
    URL = "https://github.com/andreoss/ff-hm-module";
    AccessKey = "H";

  };
  SearchEngines = {
    PreventInstalls = true;
    Default = "DuckDuckGo";
    Remove = [
      "Google"
      "Bing"
      "Amazon.com"
      "Amazon.es"
      "eBay"
      "Twitter"
    ];
    Add = [
      {
        Name = "Яндекс";
        URLTemplate = "https://yandex.ru/search/?text={searchTerms}";
        Method = "GET";
        IconURL = "https://yandex.ru/favicon.ico";
        Alias = "ya";
        SuggestURLTemplate = "https://suggest.yandex.ru/suggest-ff.cgi?part={searchTerms}";
      }
    ];
  };
  TranslateEnabled = false;
  ShowHomeButton = false;
  LegacyProfiles = true;
  Homepage = {
    Locked = true;
    URL = config.home.firefox.homePage;
    StartPage = "homepage-locked";
  };
  FirefoxHome = {
    Search = false;
    TopSites = false;
    SponsoredTopSites = false;
    Highlights = false;
    Pocket = false;
    SponsoredPocket = false;
    Snippets = false;
    Locked = true;
  };
  FirefoxSuggest = {
    WebSuggestions = false;
    SponsoredSuggestions = false;
    ImproveSuggest = false;
    Locked = true;
  };
  "Permissions" = {
    "Camera" = {
      "Allow" = [ ];
      "Block" = [ ];
      "BlockNewRequests" = true;
      "Locked" = true;
    };
    "Microphone" = {
      "Allow" = [ ];
      "Block" = [ ];
      "BlockNewRequests" = true;
      "Locked" = true;
    };
    "Location" = {
      "Allow" = [ ];
      "Block" = [ ];
      "BlockNewRequests" = true;
      "Locked" = true;
    };
    "Notifications" = {
      "Allow" = [ ];
      "Block" = [ ];
      "BlockNewRequests" = true;
      "Locked" = true;
    };
    "Autoplay" = {
      "Allow" = [ ];
      "Block" = [ ];
      "Default" = "block-audio-video";
      "Locked" = true;
    };
  };
  Preferences = {
    "security.ssl.errorReporting.enabled" = {
      "Value" = false;
      "Status" = "locked";
    };
    "accessibility.force_disabled" = {
      "Value" = 1;
      "Status" = "locked";
      "Type" = "number";
    };
    "browser.tabs.warnOnClose" = {
      "Value" = false;
      "Status" = "locked";
    };
    "geo.enabled" = {
      "Value" = false;
      "Status" = "locked";
    };
  };
  PromptForDownloadLocation = false;
}
