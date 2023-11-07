import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                      child: Image.asset(
                        'assets/images/me-half.png',
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
                              'UNIKOM',
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
                        'Knowledge is the light that dissipates the darkness',
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
                    '- Avicenna',
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
        const StaggeredAnimate(
          position: 0,
          direction: Axis.horizontal,
          duration: Duration(seconds: 2),
          child: ProjectcardPhone(),
        ),
        const StaggeredAnimate(
          position: 1,
          offset: -100,
          direction: Axis.horizontal,
          duration: Duration(seconds: 2),
          child: ProjectcardPhone(),
        ),
        const StaggeredAnimate(
          position: 2,
          direction: Axis.horizontal,
          duration: Duration(seconds: 2),
          child: ProjectcardPhone(),
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
                "I'm a self-taught front-end developer based in Kyiv, Ukraine. I can develop responsive websites from scratch and raise them into modern user-friendly web experiences.",
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
            'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
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
                  const MessageCard(
                      icon: 'assets/images/email.png',
                      contacts: 'dzulfikar.sadid.khoir@gmail.com'),
                  spaceV(16),
                  const MessageCard(
                      icon: 'assets/images/whatsapp.png',
                      contacts: '+62 813-2008-2893'),
                  spaceV(16),
                  const MessageCard(
                      icon: 'assets/images/instagram.png',
                      contacts: '@joulephi'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
