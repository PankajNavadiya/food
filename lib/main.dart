import 'package:flutter/material.dart';
import 'package:food/provider/home_provider.dart';
import 'package:food/repos/home_repository.dart';
import 'package:food/routes/app_page.dart';
import 'package:food/ui/Random/state/home_controller.dart';
import 'package:food/ui/home/view/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
       initialRoute: AppPages.initial(),
      getPages: AppPages.routes,
      home: const Homepage(),

       initialBinding: BindingsBuilder(() {
        Get.lazyPut<HomeProvider>(() => HomeProvider(), fenix: true);
        Get.lazyPut<HomeRepository>(() => HomeRepository(Get.find()), fenix: true);
        Get.lazyPut<HomeController>(() => HomeController(Get.find()), fenix: true);
        // Get.lazyPut<VerifyRepository>(() => VerifyRepository(Get.find()), fenix: true);
        // Get.lazyPut<ChangPasswordProvider>(() => ChangPasswordProvider(), fenix: true);
        // Get.lazyPut<ChangePasswordRepository>(() => ChangePasswordRepository(Get.find()), fenix: true);
        // Get.lazyPut<ChangeMobileProvider>(() => ChangeMobileProvider(), fenix: true);
        // Get.lazyPut<ChangeMobileRepository>(() => ChangeMobileRepository(Get.find()), fenix: true);
       }
    ));
  }
}
