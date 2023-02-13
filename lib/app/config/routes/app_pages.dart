import '../../modules/auth/auth.dart';

import '../../modules/home/home.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.auth;

  static final routes = [
    GetPage(
      name: Routes.auth,
      page: () => const AuthScreen(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.register, page: () => RegisterScreen()),
        GetPage(name: Routes.login, page: () => LoginScreen()),
      ],
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
