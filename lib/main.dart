import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_money_ui/app_routes.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return GetMaterialApp(
            theme: AppThemes.lightTheme,
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.initial,
            getPages: AppRoutes.routes,
          );
        });
  }
}
