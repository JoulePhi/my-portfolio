import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/drawer_phone.dart';
import 'package:portfolio/app/widgets/navbar.dart';
import 'package:portfolio/app/widgets/project_card.dart';

import '../controllers/projects_controller.dart';

class ProjectsView extends GetResponsiveView<ProjectsController> {
  ProjectsView({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
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
                children: List.generate(
                  5,
                  (index) => AnimationConfiguration.staggeredList(
                    duration: const Duration(seconds: 1),
                    position: index,
                    child: SlideAnimation(
                      verticalOffset: 500,
                      child: FadeInAnimation(
                        duration: const Duration(seconds: 1),
                        child: Container(
                          width: 310,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 200,
                                child: Placeholder(),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  border: Border.symmetric(
                                    horizontal: BorderSide(color: grey),
                                  ),
                                ),
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'HTML',
                                          style:
                                              greyText.copyWith(fontSize: 16),
                                        ),
                                        spaceH(8),
                                        Text(
                                          'Python',
                                          style:
                                              greyText.copyWith(fontSize: 16),
                                        ),
                                        spaceH(8),
                                        Text(
                                          'SCSS',
                                          style:
                                              greyText.copyWith(fontSize: 16),
                                        ),
                                        spaceH(8),
                                        Text(
                                          'Flask',
                                          style:
                                              greyText.copyWith(fontSize: 16),
                                        ),
                                        spaceH(8),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ChertNodes',
                                      style: whiteText.copyWith(
                                        fontSize: 24,
                                        fontWeight: medium,
                                      ),
                                    ),
                                    spaceV(16),
                                    Text(
                                      'Minecraft servers hosting',
                                      style: greyText.copyWith(fontSize: 16),
                                    ),
                                    spaceV(16),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: primary)),
                                          child: Text(
                                            'Live ~~>',
                                            style: whiteText.copyWith(
                                              fontSize: 16,
                                              fontWeight: medium,
                                            ),
                                          ),
                                        ),
                                        spaceH(16),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
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
      ),
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
      body: ListView(
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
          ...List.generate(5, (index) => const ProjectcardPhone()),
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
