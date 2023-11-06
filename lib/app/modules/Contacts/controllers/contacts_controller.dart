import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';

class ContactsController extends GetxController {
  final sendHover = false.obs;
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @override
  void onReady() {
    super.onReady();
    Get.find<NavbarController>().selectedPage.value =
        Get.find<NavbarController>()
            .navbar
            .indexOf(Get.currentRoute.replaceAll('/', ''));
  }
}
