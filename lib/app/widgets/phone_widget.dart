import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/modules/home/views/project_card.dart';
import 'package:portfolio/app/modules/home/views/skill_card.dart';
import 'package:portfolio/app/shared/utils.dart';

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
                'He crafts responsive websites where technologies meet creativity',
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
                child: Image.asset(
                  'assets/images/element1.png',
                  width: 120,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInImage.assetNetwork(
                    fadeInDuration: const Duration(milliseconds: 500),
                    placeholder: 'assets/images/me-half.png',
                    image: 'assets/images/me-half.png',
                    width: double.infinity,
                  ),
                  Container(
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
                          'UNIKOM',
                          style: whiteText.copyWith(fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 100.0,
                right: 20,
                child: Image.asset(
                  'assets/images/dots.png',
                  width: 84,
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
                  child: Text(
                    'With great power comes great electricity bill',
                    style: whiteText.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                  ),
                  child: Text(
                    '- Dr. Who',
                    style: whiteText.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
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
        Positioned(
          bottom: 50,
          right: Get.width * .1,
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
            Container(
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
          ],
        ),
        spaceV(32),
        const ProjectcardPhone(),
        const ProjectcardPhone(),
        const ProjectcardPhone(),
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
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  SkillCard(
                    title: 'Language',
                    skills: [
                      'C++',
                      'Python',
                      'Dart',
                      'PHP',
                      'Javascript',
                    ],
                  ),
                  SkillCard(
                    title: 'Databases',
                    skills: [
                      'MySQL',
                      'MongoDB',
                      'Redis',
                      'Firebase',
                    ],
                  ),
                  SkillCard(
                    title: 'Other',
                    skills: [
                      'HTML',
                      'CSS',
                      'REST',
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  SkillCard(
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
                  SkillCard(
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
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
