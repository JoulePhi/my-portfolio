import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';

class ProjectsController extends GetxController {
  final scrollControler = ScrollController();
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Get.find<NavbarController>().selectedPage.value =
        Get.find<NavbarController>()
            .navbar
            .indexOf(Get.currentRoute.replaceAll('/', ''));
  }
}
