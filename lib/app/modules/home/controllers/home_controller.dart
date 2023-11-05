import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final scrollControler = ScrollController();
  final imageCompleted = false.obs;
  final contactButtonHover = false.obs;
  final readMoreButtonHover = false.obs;

  final navbar = ['home', 'works', 'about-me', 'contacts'];

  final navbarIsHover = [
    false,
    false,
    false,
    false,
  ].obs;

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1), () {
      imageCompleted.value = true;
    });
    super.onInit();
  }
}
