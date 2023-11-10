import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/datas_controller.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/message_card.dart';
import 'package:portfolio/app/widgets/skill_card.dart';
import 'package:portfolio/app/widgets/staggered_animation.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 4,
          child: StaggeredAnimate(
            position: 0,
            direction: Axis.horizontal,
            offset: -100,
            child: Text(
              Get.find<DataController>().contacts.description.toString(),
              style: greyText.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              overflow: TextOverflow.clip,
            ),
          ),
        ),
        Flexible(
          flex: 5,
          child: StaggeredAnimate(
            position: 1,
            direction: Axis.horizontal,
            child: Wrap(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: grey,
                    )),
                    child: FittedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Message me here',
                            style: whiteText.copyWith(
                                fontSize: 16, fontWeight: semiBold),
                          ),
                          spaceV(16),
                          MessageCard(
                            icon: 'assets/images/email.png',
                            contacts: Get.find<DataController>()
                                .contacts
                                .email
                                .toString(),
                          ),
                          spaceV(16),
                          MessageCard(
                            icon: 'assets/images/whatsapp.png',
                            contacts: Get.find<DataController>()
                                .contacts
                                .number
                                .toString(),
                          ),
                          spaceV(16),
                          MessageCard(
                            icon: 'assets/images/instagram.png',
                            contacts: Get.find<DataController>()
                                .contacts
                                .instagram
                                .toString(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: '#',
            style: primaryText.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'contacts',
                style: whiteText.copyWith(
                  fontSize: 32,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
        spaceH(16),
        const Expanded(
          child: Divider(
            color: primary,
          ),
        )
      ],
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: '#',
                      style: primaryText.copyWith(
                        fontSize: 32,
                        fontWeight: medium,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'about-me',
                          style: whiteText.copyWith(
                            fontSize: 32,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  spaceH(16),
                  const Expanded(
                    child: Divider(
                      color: primary,
                    ),
                  )
                ],
              ),
              spaceV(25),
              StaggeredAnimate(
                position: 0,
                direction: Axis.horizontal,
                offset: -100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, i\'m JoulePhi',
                      style: greyText.copyWith(fontSize: 16),
                    ),
                    spaceV(16),
                    Text(
                      Get.find<DataController>()
                          .aboutModel
                          .description
                          .toString(),
                      style: greyText.copyWith(
                        fontSize: 16,
                        height: 2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              spaceV(25),
              Obx(
                () => primaryButton(
                    title: 'Read more ->',
                    onHover: (a) {
                      controller.readMoreButtonHover.value = a;
                    },
                    onTap: () {
                      Get.offAllNamed('/about-me');
                    },
                    isHover: controller.readMoreButtonHover.value),
              )
            ],
          ),
        ),
        Flexible(
          flex: 4,
          child: StaggeredAnimate(
            position: 1,
            direction: Axis.horizontal,
            child: Stack(
              children: [
                Positioned(
                  right: 90,
                  top: 120,
                  child: StaggeredAnimate(
                    position: 0,
                    direction: Axis.horizontal,
                    duration: const Duration(seconds: 2),
                    child: Image.asset(
                      'assets/images/dots.png',
                      width: 84,
                    ),
                  ),
                ),
                StaggeredAnimate(
                  position: 2,
                  direction: Axis.vertical,
                  duration: const Duration(seconds: 2),
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                        border:
                            const Border(bottom: BorderSide(color: primary)),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: NetworkImage(
                            Get.find<DataController>()
                                .homeModel
                                .meAbout
                                .toString(),
                          ),
                        )),
                    alignment: Alignment.bottomCenter,
                    // child: Image.asset(
                    //   'assets/images/me-4.png',
                    //   height: 500,
                    // ),
                  ),
                ),
                Positioned(
                  left: 40,
                  bottom: 10,
                  child: StaggeredAnimate(
                    position: 1,
                    direction: Axis.horizontal,
                    offset: -100,
                    child: Image.asset(
                      'assets/images/dots.png',
                      width: 84,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SkillsElement extends StatelessWidget {
  const SkillsElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 4,
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
                  right: 150,
                  child: Image.asset(
                    'assets/images/dots.png',
                    width: 65,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 90,
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
        Flexible(
          flex: 5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 0,
                  direction: Axis.vertical,
                  child: StaggeredAnimate(
                    position: 0,
                    direction: Axis.vertical,
                    delay: const Duration(seconds: 1),
                    child: SkillCard(
                      title: 'Language',
                      skills: Get.find<DataController>()
                          .aboutModel
                          .skills!['language'],
                    ),
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
                        delay: const Duration(seconds: 1),
                        child: SkillCard(
                          title: 'Databases',
                          skills: Get.find<DataController>()
                              .aboutModel
                              .skills!['databases'],
                        ),
                      ),
                      StaggeredAnimate(
                        position: 1,
                        direction: Axis.vertical,
                        delay: const Duration(seconds: 1),
                        child: SkillCard(
                          title: 'Other',
                          skills: Get.find<DataController>()
                              .aboutModel
                              .skills!['other'],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: StaggeredAnimate(
                  position: 2,
                  direction: Axis.vertical,
                  child: Column(
                    children: [
                      StaggeredAnimate(
                        position: 0,
                        direction: Axis.vertical,
                        delay: const Duration(seconds: 1),
                        child: SkillCard(
                          title: 'Tools',
                          skills: Get.find<DataController>()
                              .aboutModel
                              .skills!['tools'],
                        ),
                      ),
                      StaggeredAnimate(
                        position: 1,
                        direction: Axis.vertical,
                        delay: const Duration(seconds: 1),
                        child: SkillCard(
                          title: 'Frameworks',
                          skills: Get.find<DataController>()
                              .aboutModel
                              .skills!['frameworks'],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        spaceH(16),
        const Expanded(
          child: Divider(
            color: primary,
          ),
        ),
      ],
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 3,
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  text: '#',
                  style: primaryText.copyWith(
                    fontSize: 32,
                    fontWeight: medium,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'projects',
                      style: whiteText.copyWith(
                        fontSize: 32,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              spaceH(16),
              const Expanded(
                child: Divider(
                  color: primary,
                ),
              )
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Obx(
            () => Container(
              alignment: Alignment.centerRight,
              child: InkWell(
                onHover: (a) {
                  Get.find<HomeController>().viewAllIsHover.value = a;
                },
                onTap: () {
                  Get.offAllNamed('/projects');
                },
                child: Text(
                  'View all ~~>',
                  style: Get.find<HomeController>().viewAllIsHover.value
                      ? lightGreyText.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        )
                      : whiteText.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Quote extends StatelessWidget {
  const Quote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(32),
                  margin: const EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                  ),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        Get.find<DataController>().homeModel.quote.toString(),
                        textStyle: whiteText.copyWith(
                          fontSize: 24,
                          fontWeight: medium,
                        ),
                        speed: const Duration(milliseconds: 50),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 20,
                  child: Container(
                    color: background,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/up-quote.png',
                      width: 25,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: grey),
              ),
              child: Text(
                '- ${Get.find<DataController>().homeModel.quoteBy.toString()}',
                style: whiteText.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BannerTop extends StatelessWidget {
  const BannerTop({
    super.key,
    required this.controller,
    required this.screen,
  });

  final HomeController controller;
  final ScreenType screen;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.height * .1),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: StaggeredAnimate(
              position: 0,
              direction: Axis.horizontal,
              offset: -100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: whiteText.copyWith(
                        fontSize: 32,
                        fontWeight: semiBold,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Joulephi is a ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'software engineer',
                          style: primaryText,
                        ),
                        const TextSpan(
                          text: ' and a ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'mobile developer',
                          style: primaryText,
                        ),
                      ],
                    ),
                  ),
                  spaceV(32),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        Get.find<DataController>()
                            .homeModel
                            .subtitle
                            .toString(),
                        textStyle: greyText.copyWith(
                          fontSize: 16,
                        ),
                        speed: const Duration(milliseconds: 50),
                      )
                    ],
                  ),
                  spaceV(32),
                  Obx(
                    () => primaryButton(
                        title: 'Contact me!!',
                        onHover: (a) {
                          controller.contactButtonHover.value = a;
                        },
                        onTap: () {},
                        isHover: controller.contactButtonHover.value),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: StaggeredAnimate(
              position: 1,
              direction: Axis.horizontal,
              child: Container(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: [
                    StaggeredAnimate(
                      position: 1,
                      duration: const Duration(seconds: 2),
                      direction: Axis.horizontal,
                      offset: -100,
                      child: Image.asset(
                        'assets/images/element1.png',
                        width: 155,
                      ),
                    ),
                    StaggeredAnimate(
                      position: 0,
                      direction: Axis.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            Get.find<DataController>()
                                .homeModel
                                .meBanner
                                .toString(),
                            width: Get.width * .3,
                          ),
                          Container(
                            width: Get.width * .3,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(color: grey),
                            ),
                            child: Wrap(
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  color: primary,
                                ),
                                spaceH(10),
                                Wrap(
                                  children: [
                                    Text(
                                      'Currently studies at',
                                      style: greyText.copyWith(fontSize: 16),
                                    ),
                                    spaceH(10),
                                    Text(
                                      Get.find<DataController>()
                                          .homeModel
                                          .status
                                          .toString(),
                                      style: whiteText.copyWith(fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 100.0,
                      right: 20,
                      child: StaggeredAnimate(
                        position: 2,
                        duration: const Duration(seconds: 2),
                        direction: Axis.horizontal,
                        child: Image.network(
                          'assets/images/dots.png',
                          width: 84,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
