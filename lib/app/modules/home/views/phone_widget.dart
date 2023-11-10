import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/datas_controller.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/message_card.dart';
import 'package:portfolio/app/widgets/project_card.dart';
import 'package:portfolio/app/widgets/skill_card.dart';
import 'package:portfolio/app/widgets/staggered_animation.dart';

class BannerPhone extends StatelessWidget {
  const BannerPhone({
    super.key,
    required this.controller,
  });

  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.height * .1),
      child: Column(
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
                Get.find<DataController>().homeModel.subtitle.toString(),
                textStyle: greyText.copyWith(
                  fontSize: 16,
                ),
                speed: const Duration(milliseconds: 50),
              )
            ],
          ),
          spaceV(32),
          Stack(
            children: [
              Positioned(
                left: 20,
                top: 80,
                child: StaggeredAnimate(
                  position: 1,
                  direction: Axis.horizontal,
                  offset: -100,
                  child: Image.asset(
                    'assets/images/element1.png',
                    width: 120,
                  ),
                ),
              ),
              StaggeredAnimate(
                position: 0,
                direction: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StaggeredAnimate(
                      position: 0,
                      direction: Axis.horizontal,
                      duration: const Duration(seconds: 2),
                      child: Image.network(
                        Get.find<DataController>()
                            .homeModel
                            .meBanner
                            .toString(),
                        width: double.infinity,
                      ),
                    ),
                    StaggeredAnimate(
                      position: 1,
                      direction: Axis.horizontal,
                      offset: -100,
                      duration: const Duration(seconds: 2),
                      child: Container(
                        width: Get.width,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: grey),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              color: primary,
                            ),
                            spaceH(10),
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
                        ),
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
                  direction: Axis.horizontal,
                  child: Image.asset(
                    'assets/images/dots.png',
                    width: 84,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class QuotePhone extends StatelessWidget {
  const QuotePhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
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
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                        speed: const Duration(milliseconds: 50),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                  ),
                  child: Text(
                    '- ${Get.find<DataController>().homeModel.quoteBy}',
                    style: whiteText.copyWith(
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        Positioned(
          top: 80,
          left: Get.width * .1,
          child: Container(
            color: background,
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/up-quote.png',
              width: 17,
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectsPhone extends StatelessWidget {
  const ProjectsPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'projects',
                    style: whiteText.copyWith(
                      fontSize: 18,
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
            InkWell(
              onTap: () {
                Get.offAllNamed('/projects');
              },
              child: Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(left: 16),
                child: Text(
                  'View all ~~>',
                  style: whiteText.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
        spaceV(32),
        ...List.generate(
          3,
          (index) => StaggeredAnimate(
            position: index,
            direction: Axis.vertical,
            child: ProjectcardPhone(
              projectModel: Get.find<DataController>().projects[index],
            ),
          ),
        ),
      ],
    );
  }
}

class SkillsElementPhone extends StatelessWidget {
  const SkillsElementPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'skills',
                    style: whiteText.copyWith(
                      fontSize: 18,
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
        ),
        spaceV(16),
        Row(
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
                      duration: const Duration(seconds: 2),
                      delay: const Duration(seconds: 1),
                      child: SkillCard(
                        title: 'Language',
                        skills: Get.find<DataController>()
                            .aboutModel
                            .skills!['language'],
                      ),
                    ),
                    StaggeredAnimate(
                      position: 1,
                      direction: Axis.vertical,
                      duration: const Duration(seconds: 2),
                      delay: const Duration(seconds: 1),
                      child: SkillCard(
                        title: 'Databases',
                        skills: Get.find<DataController>()
                            .aboutModel
                            .skills!['databases'],
                      ),
                    ),
                    StaggeredAnimate(
                      position: 2,
                      direction: Axis.vertical,
                      duration: const Duration(seconds: 2),
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
                position: 1,
                direction: Axis.vertical,
                child: Column(
                  children: [
                    StaggeredAnimate(
                      position: 0,
                      direction: Axis.vertical,
                      duration: const Duration(seconds: 2),
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
                      duration: const Duration(seconds: 2),
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
            ),
          ],
        ),
      ],
    );
  }
}

class AboutMePhone extends StatelessWidget {
  const AboutMePhone({super.key, required this.controller});
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'about-me',
                    style: whiteText.copyWith(
                      fontSize: 18,
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
        StaggeredAnimate(
          position: 0,
          direction: Axis.horizontal,
          duration: const Duration(seconds: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spaceV(16),
              Text('Hello, I\'m JoulePhi!',
                  style: greyText.copyWith(fontSize: 16)),
              spaceV(16),
              Text(
                Get.find<DataController>().aboutModel.description.toString(),
                style: greyText.copyWith(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              spaceV(16),
            ],
          ),
        ),
        StaggeredAnimate(
          position: 1,
          direction: Axis.horizontal,
          duration: const Duration(seconds: 2),
          offset: -100,
          child: Obx(
            () => primaryButton(
                title: 'Read more ->',
                onHover: (a) {
                  controller.readMoreButtonHover.value = a;
                },
                onTap: () {
                  Get.offAllNamed('/about-me');
                },
                isHover: controller.readMoreButtonHover.value),
          ),
        )
      ],
    );
  }
}

class ContactsPhone extends StatelessWidget {
  const ContactsPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'contacts',
                    style: whiteText.copyWith(
                      fontSize: 16,
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
        spaceV(16),
        StaggeredAnimate(
          position: 0,
          direction: Axis.horizontal,
          duration: const Duration(seconds: 2),
          child: Text(
            Get.find<DataController>().contacts.description.toString(),
            style: greyText.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            overflow: TextOverflow.clip,
          ),
        ),
        spaceV(32),
        StaggeredAnimate(
          position: 2,
          direction: Axis.horizontal,
          duration: const Duration(seconds: 2),
          offset: -100,
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
                    style:
                        whiteText.copyWith(fontSize: 16, fontWeight: semiBold),
                  ),
                  spaceV(16),
                  MessageCard(
                      icon: 'assets/images/email.png',
                      contacts:
                          Get.find<DataController>().contacts.email.toString()),
                  spaceV(16),
                  MessageCard(
                      icon: 'assets/images/whatsapp.png',
                      contacts: Get.find<DataController>()
                          .contacts
                          .number
                          .toString()),
                  spaceV(16),
                  MessageCard(
                      icon: 'assets/images/instagram.png',
                      contacts: Get.find<DataController>()
                          .contacts
                          .instagram
                          .toString()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
