import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/models/home_model.dart';
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
  final pageIsLoading = false.obs;
  HomeModel homeModel = HomeModel();

  @override
  void onInit() async {
    pageIsLoading.value = true;
    final data = await firestore.collection('datas').doc('home').get();
    homeModel = HomeModel.fromJson(data.data());
    pageIsLoading.value = false;
    print(data.data());
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
