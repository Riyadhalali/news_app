import 'package:get/get.dart';
import 'package:news_app/view/home_screen/screen/home_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/homeScreen", page: () => HomeScreen()),
];
