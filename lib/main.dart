import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/config/app_binding.dart';
import 'app/config/routes/app_pages.dart';
import 'app/config/themes/app_theme.dart';
import 'app/shared/shared.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Project Management',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.basic,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      initialBinding: AppBinding(),
      builder: EasyLoading.init(),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.chasingDots
    ..loadingStyle = EasyLoadingStyle.custom
    // ..indicatorSize = 45.0
    ..radius = 10.0
    // ..progressColor = Colors.yellow
    ..backgroundColor = kCardColor
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    // ..maskColor = Colors.red
    ..userInteractions = false
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.scale;
}
