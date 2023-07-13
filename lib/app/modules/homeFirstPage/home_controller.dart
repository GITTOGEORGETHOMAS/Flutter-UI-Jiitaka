import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString time = ''.obs;
  RxString cellularConnection = ''.obs;
  RxString wifiConnection = ''.obs;
  RxString batteryLevel = ''.obs;

  var tabIndex = 2.obs;
  @override
  void onInit() {
    super.onInit();
    updateTime();
  }

  void updateTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      DateTime now = DateTime.now();
      time.value = '${now.hour}:${now.minute}';
    });
  }
}
