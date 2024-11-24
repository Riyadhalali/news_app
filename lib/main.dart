import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/routes.dart';

import 'binding/initial_bindings.dart';
import 'core/const_data/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: InitialBindings(),
        getPages: routes,
        initialRoute: Routes.homeScreen);
  }
}
