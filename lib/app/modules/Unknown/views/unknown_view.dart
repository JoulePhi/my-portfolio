import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/shared/utils.dart';

import '../controllers/unknown_controller.dart';

class UnknownView extends GetView<UnknownController> {
  const UnknownView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Expanded(child: Image.asset('assets/images/404.png')),
        ),
      ),
    );
  }
}
