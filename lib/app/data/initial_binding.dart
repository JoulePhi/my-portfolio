import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => NavbarController());
    Get.put(NavbarController(), permanent: true);
  }
}
