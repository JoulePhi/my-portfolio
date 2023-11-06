import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';

class AboutMeController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  final List experiences = [
    'Join Robotics Community in SMKN 4 Bandung',
    'Relawan Indonesia Participant',
    'PZN  Laravel Courses',
    'BWA fullstack laravel and flutter m-banking',
    'BWA fullstack laravel and flutter e-commerce',
    'BWA fullstack laravel and AWS Streaming Web',
  ];

  final experiencesHover = [
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;

  @override
  void onReady() {
    super.onReady();
    Get.find<NavbarController>().selectedPage.value =
        Get.find<NavbarController>()
            .navbar
            .indexOf(Get.currentRoute.replaceAll('/', ''));
  }
}
