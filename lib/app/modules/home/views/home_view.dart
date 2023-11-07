import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/views/desktop_widget.dart';
import 'package:portfolio/app/modules/home/views/phone_widget.dart';
import 'package:portfolio/app/widgets/drawer_phone.dart';
import 'package:portfolio/app/widgets/navbar.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/project_card.dart';
import 'package:portfolio/app/widgets/staggered_animation.dart';
import '../controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key});

  @override
  Widget? desktop() {
    return Scaffold(
        backgroundColor: background,
        body: Obx(() {
          if (controller.pageIsLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Scrollbar(
            controller: controller.scrollControler,
            child: Stack(
              children: [
                ListView(
                  controller: controller.scrollControler,
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
                  children: [
                    const NavBar(
                      currentPage: 'home',
                    ),
                    BannerTop(
                      controller: controller,
                      screen: screen.screenType,
                    ),
                    const Quote(),
                    spaceV(100),
                    const Projects(),
                    spaceV(50),
                    Get.width < 1500
                        ? Row(
                            children: [
                              const Flexible(
                                flex: 1,
                                child: StaggeredAnimate(
                                  position: 0,
                                  direction: Axis.vertical,
                                  child: Projectcard(),
                                ),
                              ),
                              spaceH(16),
                              const Flexible(
                                flex: 1,
                                child: StaggeredAnimate(
                                  position: 1,
                                  direction: Axis.vertical,
                                  child: Projectcard(),
                                ),
                              ),
                              spaceH(16),
                              const Flexible(
                                flex: 1,
                                child: StaggeredAnimate(
                                  position: 2,
                                  direction: Axis.vertical,
                                  child: Projectcard(),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              const Flexible(
                                flex: 1,
                                child: StaggeredAnimate(
                                  position: 0,
                                  direction: Axis.vertical,
                                  child: Projectcard(),
                                ),
                              ),
                              spaceH(16),
                              const Flexible(
                                flex: 1,
                                child: StaggeredAnimate(
                                  position: 1,
                                  direction: Axis.vertical,
                                  child: Projectcard(),
                                ),
                              ),
                              spaceH(16),
                              const Flexible(
                                flex: 1,
                                child: StaggeredAnimate(
                                  position: 2,
                                  direction: Axis.vertical,
                                  child: Projectcard(),
                                ),
                              ),
                              spaceH(16),
                              const Flexible(
                                flex: 1,
                                child: StaggeredAnimate(
                                  position: 2,
                                  direction: Axis.vertical,
                                  child: Projectcard(),
                                ),
                              ),
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
                Positioned(
                  top: 0,
                  left: Get.width * .025,
                  child: Column(
                    children: [
                      const StaggeredAnimate(
                        position: 0,
                        direction: Axis.vertical,
                        duration: Duration(seconds: 3),
                        offset: -100,
                        child: SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            color: grey,
                          ),
                        ),
                      ),
                      spaceV(16),
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse('https://wa.link/ffogoi'));
                        },
                        child: StaggeredAnimate(
                          position: 1,
                          direction: Axis.vertical,
                          duration: const Duration(seconds: 3),
                          offset: -100,
                          child: Image.asset(
                            'assets/images/whatsapp.png',
                            width: 20,
                          ),
                        ),
                      ),
                      spaceV(16),
                      InkWell(
                        onHover: (a) {},
                        onTap: () {
                          launchUrl(
                              Uri.parse('https://www.instagram.com/joulephi'));
                        },
                        child: StaggeredAnimate(
                          position: 2,
                          direction: Axis.vertical,
                          duration: const Duration(seconds: 3),
                          offset: -200,
                          child: Image.asset(
                            'assets/images/instagram.png',
                            width: 20,
                          ),
                        ),
                      ),
                      spaceV(16),
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse('https://github.com/JoulePhi'));
                        },
                        child: StaggeredAnimate(
                          position: 3,
                          direction: Axis.vertical,
                          duration: const Duration(seconds: 3),
                          offset: -300,
                          child: Image.asset(
                            'assets/images/github.png',
                            width: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }));
  }

  @override
  Widget? tablet() {
    return Scaffold(
      backgroundColor: background,
      body: Scrollbar(
        controller: controller.scrollControler,
        child: ListView(
          controller: controller.scrollControler,
          padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
          children: [
            const NavBar(
              currentPage: 'home',
            ),
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
      key: controller.scaffoldKey,
      drawer: DrawerPhone(
        onTap: () {
          controller.scaffoldKey.currentState!.closeDrawer();
        },
      ),
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        automaticallyImplyLeading: false,
        leading: null,
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
            child: GestureDetector(
              onTap: () {
                controller.scaffoldKey.currentState!.openDrawer();
              },
              child: Image.asset(
                'assets/images/burger.png',
                width: 24,
              ),
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
          spaceV(Get.height * .08),
          AboutMePhone(
            controller: controller,
          ),
          spaceV(Get.height * .08),
          const ContactsPhone(),
          spaceV(32),
          const Divider(
            color: grey,
          ),
          spaceV(16),
          Text(
            '© Copyright 2023. Made by JoulePhi',
            style: greyText.copyWith(fontSize: 12),
          ),
          spaceV(16),
        ],
      ),
    );
  }
}
