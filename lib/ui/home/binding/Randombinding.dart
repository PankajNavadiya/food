
import 'package:food/ui/Random/state/home_controller.dart';
import 'package:get/get.dart';

class MainHomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController(Get.find()));
  }

}