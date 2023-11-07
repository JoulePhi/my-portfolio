import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/data/initial_binding.dart';
import 'package:portfolio/app/shared/scroll_behavior.dart';
import 'package:portfolio/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Joulephi | Software Engineer",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: AppPages.UNKNOWN,
      scrollBehavior: WebScrollBehavior(),
      initialBinding: InitialBinding(),
      defaultTransition: Transition.noTransition,
    ),
  );
}
