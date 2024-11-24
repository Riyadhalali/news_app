import '../const_data/const_data.dart';

class AppLink {
  static String reg = "127.0.0.1";

  static String appRoot = "http://google.com";
  static String imageWithRoot = "$appRoot/storage/";
  static String imageWithoutRoot = appRoot;
  static String serverApiRoot = "$appRoot/api/";

  static String login = "$serverApiRoot/login";
  static String home = "$serverApiRoot/home";

  Map<String, String> getHeader(                   ) {
    Map<String, String> mainHeader = {
      'Content - Type': 'application/json',
      ' Accept': 'application/json',
      ' x - Requested - with': 'XMLHttpRequest',
    };
    return mainHeader;
  }

  Map<String, String> getHeaderToken(                   ) {
    Map<String, String> mainHeader = {
      'Content - Type': 'application/json',
      ' Accept': 'application/json',
      ' x - Requested - with': 'XMLHttpRequest',
      'Autherization': 'Bearer ${ConstData.token}',
    };
    return mainHeader;
  }
}
