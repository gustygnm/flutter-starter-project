import 'package:flutter_starter_project/presentation/home/pages/home_page.dart';
import 'package:flutter_starter_project/presentation/login/pages/login_page.dart';
import 'package:get/route_manager.dart';

class Routes {
  static List<GetPage> page = <GetPage>[
    GetPage<void>(
      name: HomePage.route,
      page: () => const HomePage(),
    ),
    GetPage<void>(
      name: LoginPage.route,
      page: LoginPage.new,
    ),
  ];
}
