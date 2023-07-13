import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/app/core/theme/theme.dart';
import 'package:flutter_application_1/app/routes/app_page.dart';
import 'package:flutter_application_1/app/routes/app_route.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
      },
      child: GetMaterialApp(
        title: 'Figma Design -JIITAK',
        smartManagement: SmartManagement.full,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeRoute,
        getPages: AppPages.pages,
        theme: Themes.dark,
      ),
    );
  }
}
