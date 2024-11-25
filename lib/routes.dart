import 'package:get/get.dart';
import 'package:news_app/view/home_screen/screen/home_screen.dart';
import 'package:news_app/view/notifications_screen/screen/notifications_screen.dart';
import 'package:news_app/view/settings_screen/screen/settings_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/homeScreen", page: () => HomeScreen()),
  GetPage(name: "/settingScreen", page: () => SettingScreen()),
  GetPage(name: "/notificationScreen", page: () => NotificationScreen())
];
// new
