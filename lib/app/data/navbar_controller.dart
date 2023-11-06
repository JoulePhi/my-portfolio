import 'package:get/get.dart';

class NavbarController extends GetxController {
  final navbar = ['home', 'projects', 'about-me', 'contacts'];

  final navbarIsHover = [
    false,
    false,
    false,
    false,
  ].obs;

  final selectedPage = 0.obs;
}
