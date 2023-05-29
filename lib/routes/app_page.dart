import 'package:food/ui/home/view/homepage.dart';
import 'package:get/get.dart';

import '../rendom.dart';
import '../ui/Random/binding/Randombinding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static initial() {
    return Routes.INTRO;
  }



  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const RendomPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const Homepage(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () => const HomeRoute(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: _Paths.VIEW_ALL_JOB,
    //   page: () => const ViewAllJobRoute(),
    //   binding: ViewAllJobsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.LOGIN,
    //   page: () => const LoginRoute(),
    //   binding: LoginBinding(),
    // ),
  
  ];
}
