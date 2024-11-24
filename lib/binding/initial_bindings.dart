import 'package:get/get.dart';

import '../core/class/crud.dart';
import '../view/home_screen/controller/home_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(crud());
    Get.put(HomeController(), permanent: true);
  }
}
