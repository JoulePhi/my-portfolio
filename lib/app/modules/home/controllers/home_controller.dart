import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeController extends GetxController {
  final scrollControler = ScrollController();
  final imageCompleted = false.obs;
  final contactButtonHover = false.obs;
  final readMoreButtonHover = false.obs;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final currentPage = ''.obs;
  final viewAllIsHover = false.obs;
  final onQuoteFinished = false.obs;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final image1IsLoaded = false.obs;
  final image2IsLoaded = false.obs;

  @override
  void onReady() {
    super.onReady();
    Get.find<NavbarController>().selectedPage.value =
        Get.find<NavbarController>()
            .navbar
            .indexOf(Get.currentRoute.replaceAll('/', ''));
  }
}
