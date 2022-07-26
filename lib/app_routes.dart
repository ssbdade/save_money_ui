import 'package:get/get.dart';
import 'modules/modules.dart';
// import 'models/models.dart';

abstract class Routes {
  static const splash = '/splash';
  static const home = '/home';
  static const setting = '/setting';
}

class AppRoutes {
  static const initial = Routes.home;
  // static final unknownRoute =
  // GetPage(name: Routes.report, page: () => const ReportPage());
  static final routes = [
    // GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.home, page: () => const MyHomePage()),
    // GetPage(name: Routes.HOMEWEATHER, page: () => HomeWeatherPage()),
    // GetPage(name: Routes.SETTING, page: () => SettingPage()),
  ];
}