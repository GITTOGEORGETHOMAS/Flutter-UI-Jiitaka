import 'package:flutter_application_1/app/modules/homeFirstPage/home_binding.dart';
import 'package:flutter_application_1/app/modules/homeFirstPage/home_page.dart';
import 'package:flutter_application_1/app/routes/app_route.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.homeRoute, page: () => HomePage(), binding: HomeBinding()),
  ];
}
