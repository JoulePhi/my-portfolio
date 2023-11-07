import 'package:get/get.dart';

import '../modules/AboutMe/bindings/about_me_binding.dart';
import '../modules/AboutMe/views/about_me_view.dart';
import '../modules/Contacts/bindings/contacts_binding.dart';
import '../modules/Contacts/views/contacts_view.dart';
import '../modules/Projects/bindings/projects_binding.dart';
import '../modules/Projects/views/projects_view.dart';
import '../modules/Unknown/bindings/unknown_binding.dart';
import '../modules/Unknown/views/unknown_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static final UNKNOWN = GetPage(
    name: _Paths.UNKNOWN,
    page: () => const UnknownView(),
    binding: UnknownBinding(),
  );
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROJECTS,
      page: () => ProjectsView(),
      binding: ProjectsBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_ME,
      page: () => AboutMeView(),
      binding: AboutMeBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTS,
      page: () => ContactsView(),
      binding: ContactsBinding(),
    ),
  ];
}
