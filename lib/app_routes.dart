import 'package:get/get.dart';
import 'modules/modules.dart';

abstract class Routes {
  static const splash = '/splash';
  static const home = '/home';
  static const report = '/report';
  static const setting = '/setting';
}

class AppRoutes {
  static const initial = Routes.report;
  // static final unknownRoute =
  // GetPage(name: Routes.report, page: () => const ReportPage());
  static final routes = [
    // GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    // GetPage(name: Routes.HOME, page: () => HomePage()),
    // GetPage(name: Routes.HOMEWEATHER, page: () => HomeWeatherPage()),
    // GetPage(name: Routes.SETTING, page: () => SettingPage()),
    //GetPage(name: Routes.report, page: () => const ReportPage()),
  ];
}