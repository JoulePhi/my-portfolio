import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/data/initial_binding.dart';
import 'package:portfolio/app/shared/scroll_behavior.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Joulephi | Software Engineer",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      scrollBehavior: WebScrollBehavior(),
      initialBinding: InitialBinding(),
      defaultTransition: Transition.noTransition,
    ),
  );
}
