import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';

class HomeController extends GetxController {
  final scrollControler = ScrollController();
  final imageCompleted = false.obs;
  final contactButtonHover = false.obs;
  final readMoreButtonHover = false.obs;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final currentPage = ''.obs;
  final viewAllIsHover = false.obs;
  final onQuoteFinished = false.obs;

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1), () {
      imageCompleted.value = true;
    });
    super.onInit();
  }

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
