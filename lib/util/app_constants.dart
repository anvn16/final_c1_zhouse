class AppConstants {
  static const String appName = 'Hzone';
  static const double appVersion = 2.1;
  static const String HZone_URL = 'https://hzone.vn';

  static var remoteConfigDefault = {
    'is_show_navigation_hzone': false,
    'token_reset_password_default': '1619',
    'webview_hzone_navigation_url': HZone_URL
  };
  //key remote config
  static const showNavHzoneKey = 'is_show_navigation_hzone';
  static const tokenResetPasswordDefault = 'token_reset_password_default';
  static const wvHzoneNavUrl = 'webview_hzone_navigation_url';
}
