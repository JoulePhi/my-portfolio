import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/drawer_phone.dart';
import 'package:portfolio/app/widgets/experience_card.dart';
import 'package:portfolio/app/widgets/navbar.dart';
import 'package:portfolio/app/widgets/skill_card.dart';
import 'package:portfolio/app/widgets/staggered_animation.dart';

import '../controllers/about_me_controller.dart';

class AboutMeView extends GetResponsiveView<AboutMeController> {
  AboutMeView({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
        children: [
          const NavBar(currentPage: 'about-us'),
          spaceV(16),
          RichText(
            text: TextSpan(
              text: '/',
              style: primaryText.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'about-me',
                  style: whiteText.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          spaceV(16),
          Text(
            'Who am i?',
            style: greyText.copyWith(
              fontSize: 24,
            ),
          ),
          spaceV(48),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 5,
                child: AnimationConfiguration.staggeredList(
                  duration: const Duration(seconds: 1),
                  delay: const Duration(seconds: 1),
                  position: 0,
                  child: SlideAnimation(
                    horizontalOffset: -100,
                    child: FadeInAnimation(
                      duration: const Duration(seconds: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello, I\'m JoulePhi!',
                              style: greyText.copyWith(fontSize: 16)),
                          spaceV(16),
                          Text(
                            'I’m a self-taught front-end developer based in Kyiv, Ukraine. '
                            'I can develop responsive websites from scratch and raise them '
                            'into modern user-friendly web experiences.',
                            style: greyText.copyWith(fontSize: 16),
                          ),
                          spaceV(16),
                          Text(
                            'Transforming my creativity and knowledge into websites has been my '
                            'passion for over a year. I have been helping various clients to '
                            'establish their presence online. I always strive to learn about the '
                            'newest technologies and frameworks.',
                            style: greyText.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: AnimationConfiguration.staggeredList(
                  duration: const Duration(seconds: 1),
                  position: 1,
                  child: SlideAnimation(
                    horizontalOffset: 100,
                    child: FadeInAnimation(
                      duration: const Duration(seconds: 1),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 90,
                            top: 120,
                            child: Image.asset(
                              'assets/images/dots.png',
                              width: 84,
                            ),
                          ),
                          Container(
                            height: 500,
                            decoration: const BoxDecoration(
                                border:
                                    Border(bottom: BorderSide(color: primary)),
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                    'assets/images/me-half.png',
                                  ),
                                )),
                            alignment: Alignment.bottomCenter,
                            // child: Image.asset(
                            //   'assets/images/me-4.png',
                            //   height: 500,
                            // ),
                          ),
                          Positioned(
                            left: 40,
                            bottom: 10,
                            child: Image.asset(
                              'assets/images/dots.png',
                              width: 84,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          spaceV(100),
          RichText(
            text: TextSpan(
              text: '#',
              style: primaryText.copyWith(
                fontSize: 32,
                fontWeight: medium,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'skills',
                  style: whiteText.copyWith(
                    fontSize: 32,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          spaceV(48),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 0,
                  direction: Axis.horizontal,
                  offset: -100,
                  child: SkillCard(
                    title: 'Language',
                    skills: [
                      'C++',
                      'Python',
                      'Dart',
                      'PHP',
                      'Javascript',
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 1,
                  direction: Axis.horizontal,
                  offset: -100,
                  child: SkillCard(
                    title: 'Databases',
                    skills: [
                      'MySQL',
                      'MongoDB',
                      'Redis',
                      'Firebase',
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 2,
                  direction: Axis.vertical,
                  child: SkillCard(
                    title: 'Other',
                    skills: [
                      'HTML',
                      'CSS',
                      'REST',
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 3,
                  direction: Axis.horizontal,
                  child: SkillCard(
                    title: 'Tools',
                    skills: [
                      'VSCode',
                      'Figma',
                      'Postman',
                      'Laragon',
                      'Git',
                      'Linux'
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 4,
                  direction: Axis.horizontal,
                  child: SkillCard(
                    title: 'Frameworks',
                    skills: [
                      'Flutter',
                      'Laravel',
                      'Vue JS',
                      'Inertia JS',
                      'Arduino',
                      'Tailwind'
                    ],
                  ),
                ),
              ),
            ],
          ),
          spaceV(100),
          RichText(
            text: TextSpan(
              text: '#',
              style: primaryText.copyWith(
                fontSize: 32,
                fontWeight: medium,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'experiences',
                  style: whiteText.copyWith(
                    fontSize: 32,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          spaceV(32),
          Row(
            children: [
              Flexible(
                flex: 5,
                child: SizedBox(
                  child: Wrap(
                    runSpacing: 16,
                    spacing: 8,
                    alignment: WrapAlignment.start,
                    children: controller.experiences
                        .map(
                          (e) => AnimationConfiguration.staggeredList(
                            duration: const Duration(seconds: 1),
                            position: controller.experiences.indexOf(e),
                            child: SlideAnimation(
                              verticalOffset: 100,
                              child: FadeInAnimation(
                                duration: const Duration(seconds: 1),
                                child: ExperienceCard(
                                  experience: e,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        left: 50,
                        child: Image.asset(
                          'assets/images/dots.png',
                          width: 65,
                        ),
                      ),
                      Positioned(
                        bottom: 100,
                        right: 50,
                        child: Image.asset(
                          'assets/images/dots.png',
                          width: 65,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 80,
                        child: Image.asset(
                          'assets/images/element2.png',
                          width: 100,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 30,
                        child: Container(
                          width: 86,
                          height: 86,
                          decoration: BoxDecoration(
                            border: Border.all(color: white),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 0,
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
                  text: 'about-me',
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
            'Who am i?',
            style: greyText.copyWith(
              fontSize: 12,
            ),
          ),
          spaceV(48),
          Stack(
            children: [
              Positioned(
                right: 90,
                top: 50,
                child: StaggeredAnimate(
                  position: 1,
                  direction: Axis.horizontal,
                  child: Image.asset(
                    'assets/images/dots.png',
                    width: 72,
                  ),
                ),
              ),
              StaggeredAnimate(
                position: 0,
                direction: Axis.horizontal,
                child: Container(
                  height: Get.width,
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: primary)),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/images/me-half.png',
                        ),
                      )),
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Positioned(
                left: 20,
                bottom: 10,
                child: StaggeredAnimate(
                  position: 2,
                  direction: Axis.horizontal,
                  offset: -100,
                  child: Image.asset(
                    'assets/images/dots.png',
                    width: 72,
                  ),
                ),
              ),
            ],
          ),
          spaceV(32),
          Text('Hello, I\'m JoulePhi!', style: greyText.copyWith(fontSize: 16)),
          spaceV(16),
          Text(
            'I’m a self-taught front-end developer based in Kyiv, Ukraine. '
            'I can develop responsive websites from scratch and raise them '
            'into modern user-friendly web experiences.',
            style: greyText.copyWith(fontSize: 16),
          ),
          spaceV(16),
          Text(
            'Transforming my creativity and knowledge into websites has been my '
            'passion for over a year. I have been helping various clients to '
            'establish their presence online. I always strive to learn about the '
            'newest technologies and frameworks.',
            style: greyText.copyWith(fontSize: 16),
          ),
          spaceV(32),
          RichText(
            text: TextSpan(
              text: '#',
              style: primaryText.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'skills',
                  style: whiteText.copyWith(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          spaceV(32),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 0,
                  direction: Axis.vertical,
                  child: Column(
                    children: [
                      StaggeredAnimate(
                        position: 0,
                        direction: Axis.vertical,
                        duration: Duration(seconds: 2),
                        delay: Duration(seconds: 1),
                        child: SkillCard(
                          title: 'Language',
                          skills: [
                            'C++',
                            'Python',
                            'Dart',
                            'PHP',
                            'Javascript',
                          ],
                        ),
                      ),
                      StaggeredAnimate(
                        position: 1,
                        direction: Axis.vertical,
                        duration: Duration(seconds: 2),
                        delay: Duration(seconds: 1),
                        child: SkillCard(
                          title: 'Databases',
                          skills: [
                            'MySQL',
                            'MongoDB',
                            'Redis',
                            'Firebase',
                          ],
                        ),
                      ),
                      StaggeredAnimate(
                        position: 2,
                        direction: Axis.vertical,
                        duration: Duration(seconds: 2),
                        delay: Duration(seconds: 1),
                        child: SkillCard(
                          title: 'Other',
                          skills: [
                            'HTML',
                            'CSS',
                            'REST',
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                  flex: 1,
                  child: StaggeredAnimate(
                    position: 1,
                    direction: Axis.vertical,
                    child: Column(
                      children: [
                        StaggeredAnimate(
                          position: 0,
                          direction: Axis.vertical,
                          duration: Duration(seconds: 2),
                          delay: Duration(seconds: 1),
                          child: SkillCard(
                            title: 'Tools',
                            skills: [
                              'VSCode',
                              'Figma',
                              'Postman',
                              'Laragon',
                              'Git',
                              'Linux'
                            ],
                          ),
                        ),
                        StaggeredAnimate(
                          position: 1,
                          direction: Axis.vertical,
                          duration: Duration(seconds: 2),
                          delay: Duration(seconds: 1),
                          child: SkillCard(
                            title: 'Frameworks',
                            skills: [
                              'Flutter',
                              'Laravel',
                              'Vue JS',
                              'Inertia JS',
                              'Arduino',
                              'Tailwind'
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          spaceV(48),
          RichText(
            text: TextSpan(
              text: '#',
              style: primaryText.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'experiences',
                  style: whiteText.copyWith(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          spaceV(32),
          Wrap(
            runSpacing: 16,
            spacing: 8,
            alignment: WrapAlignment.start,
            children: controller.experiences
                .map(
                  (e) => StaggeredAnimate(
                    position: controller.experiences.indexOf(e),
                    direction: Axis.horizontal,
                    duration: const Duration(seconds: 2),
                    delay: const Duration(milliseconds: 500),
                    child: ExperienceCard(
                      experience: e,
                    ),
                  ),
                )
                .toList(),
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
      ),
    );
  }
}
