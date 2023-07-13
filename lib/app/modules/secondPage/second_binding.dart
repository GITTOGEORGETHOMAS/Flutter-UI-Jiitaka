import 'package:flutter_application_1/app/modules/secondPage/second_controller.dart';
import 'package:get/get.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondController>(() => SecondController(), fenix: true);
  }
}
