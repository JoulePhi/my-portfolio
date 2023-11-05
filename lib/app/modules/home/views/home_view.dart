import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/views/navbar.dart';
import 'package:portfolio/app/modules/home/views/project_card.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/phone_widget.dart';
import '../../../widgets/desktop_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key})
      : super(
          settings: const ResponsiveScreenSettings(
              desktopChangePoint: 1000,
              tabletChangePoint: 768,
              watchChangePoint: 300),
        );

  @override
  Widget? desktop() {
    return Scaffold(
      backgroundColor: background,
      body: Scrollbar(
        controller: controller.scrollControler,
        child: ListView(
          controller: controller.scrollControler,
          padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
          children: [
            const NavBar(),
            BannerTop(
              controller: controller,
              screen: screen.screenType,
            ),
            const Quote(),
            spaceV(100),
            const Projects(),
            spaceV(50),
            Row(
              children: [
                const Projectcard(),
                spaceH(16),
                const Projectcard(),
                spaceH(16),
                const Projectcard(),
              ],
            ),
            spaceV(50),
            const Skills(),
            const SkillsElement(),
            spaceV(100),
            AboutMe(controller: controller),
            spaceV(100),
            const Contacts(),
            spaceV(50),
            const ContactBox(),
            spaceV(100),
            const Divider(
              color: grey,
            ),
            spaceV(32),
            Text(
              '© Copyright 2023. Made by JoulePhi',
              style: greyText.copyWith(fontSize: 16),
            ),
            spaceV(32),
          ],
        ),
      ),
    );
  }

  @override
  Widget? tablet() {
    // TODO: implement tablet
    return Scaffold(
      backgroundColor: background,
      body: Scrollbar(
        controller: controller.scrollControler,
        child: ListView(
          controller: controller.scrollControler,
          padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
          children: [
            const NavBar(),
            BannerTop(
              controller: controller,
              screen: screen.screenType,
            ),
            const Quote(),
            spaceV(100),
            const Projects(),
            spaceV(50),
            Row(
              children: [
                const Projectcard(),
                spaceH(16),
                const Projectcard(),
                spaceH(16),
                const Projectcard(),
              ],
            ),
            spaceV(50),
            const Skills(),
            const SkillsElement(),
            spaceV(100),
            AboutMe(controller: controller),
            spaceV(100),
            const Contacts(),
            spaceV(50),
            const ContactBox(),
            spaceV(100),
            const Divider(
              color: grey,
            ),
            spaceV(32),
            Text(
              '© Copyright 2023. Made by JoulePhi',
              style: greyText.copyWith(fontSize: 16),
            ),
            spaceV(32),
          ],
        ),
      ),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        title: Text(
          'JoulePhi',
          style: whiteText.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/images/burger.png',
              width: 24,
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          BannerPhone(controller: controller),
          spaceV(Get.height * .08),
          const QuotePhone(),
          spaceV(Get.height * .08),
          const ProjectsPhone(),
          spaceV(Get.height * .08),
          const SkillsElementPhone(),
        ],
      ),
    );
  }
}
