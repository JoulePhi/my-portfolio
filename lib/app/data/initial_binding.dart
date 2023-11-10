import 'package:get/get.dart';
import 'package:portfolio/app/data/datas_controller.dart';
import 'package:portfolio/app/data/navbar_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => NavbarController());
    Get.put(DataController(), permanent: true);
    Get.put(NavbarController(), permanent: true);
  }
}
