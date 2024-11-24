import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/view/home_screen/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  child: Text("${controller.count}"));
            }));
  }
}
