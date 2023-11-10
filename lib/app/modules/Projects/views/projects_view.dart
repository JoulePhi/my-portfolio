import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/data/datas_controller.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/drawer_phone.dart';
import 'package:portfolio/app/widgets/navbar.dart';
import 'package:portfolio/app/widgets/project_card.dart';
import 'package:portfolio/app/widgets/staggered_animation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/projects_controller.dart';

class ProjectsView extends GetResponsiveView<ProjectsController> {
  ProjectsView({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return Scaffold(
      backgroundColor: background,
      body: Obx(() {
        if (Get.find<DataController>().pageIsLoading.value) {
          return const Center(
            child: CircularProgressIndicator(
              color: primary,
            ),
          );
        }
        return ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
              child: const NavBar(currentPage: 'projects'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '/',
                      style: primaryText.copyWith(
                        fontSize: 36,
                        fontWeight: semiBold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'projects',
                          style: whiteText.copyWith(
                            fontSize: 36,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  spaceV(16),
                  Text(
                    'List of my projects',
                    style: greyText.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  spaceV(48)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  runSpacing: 32,
                  children: List.generate(
                    Get.find<DataController>().projects.length,
                    (index) => AnimationConfiguration.staggeredList(
                      duration: const Duration(seconds: 1),
                      position: index,
                      child: SlideAnimation(
                        verticalOffset: 500,
                        child: FadeInAnimation(
                          duration: const Duration(seconds: 1),
                          child: ProjectCardGrid(
                            projectModel:
                                Get.find<DataController>().projects[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            )
          ],
        );
      }),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      key: controller.scaffoldState,
      drawer: DrawerPhone(
        onTap: () {
          controller.scaffoldState.currentState!.closeDrawer();
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
                controller.scaffoldState.currentState!.openDrawer();
              },
              child: Image.asset(
                'assets/images/burger.png',
                width: 24,
              ),
            ),
          )
        ],
      ),
      body: Obx(() {
        if (Get.find<DataController>().pageIsLoading.value) {
          return const Center(
            child: CircularProgressIndicator(
              color: primary,
            ),
          );
        }
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
          children: [
            spaceV(16),
            RichText(
              text: TextSpan(
                text: '/',
                style: primaryText.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'projects',
                    style: whiteText.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            spaceV(16),
            Text(
              'List of my projects',
              style: greyText.copyWith(
                fontSize: 12,
              ),
            ),
            spaceV(48),
            ...List.generate(
              Get.find<DataController>().projects.length,
              (index) => StaggeredAnimate(
                position: index,
                direction: Axis.vertical,
                child: AnimationLimiter(
                    child: GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(Get.find<DataController>()
                        .projects[index]
                        .source
                        .toString()));
                  },
                  child: ProjectcardPhone(
                    projectModel: Get.find<DataController>().projects[index],
                  ),
                )),
              ),
            ),
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
        );
      }),
    );
  }
}
