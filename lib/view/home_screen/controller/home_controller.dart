import 'package:get/get.dart';

class HomeController extends GetxController {
  int count = 0;

  GetData(                   ) {
    count++;

    update(                   );
  }

  @override
  void onInit(                   ) {
    GetData(                   );
    // TODO: implement onInit
    super.onInit(                   );
  }
}
