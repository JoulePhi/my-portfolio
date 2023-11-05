import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/modules/home/views/message_card.dart';
import 'package:portfolio/app/shared/utils.dart';

import '../modules/home/views/skill_card.dart';

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
          flex: 1,
          child: Text(
            'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
            style: greyText.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: grey,
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Message me here',
                      style: whiteText.copyWith(
                          fontSize: 16, fontWeight: semiBold),
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
            ],
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
          flex: 1,
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
              spaceV(25),
              Obx(
                () => primaryButton(
                    title: 'Read more ->',
                    onHover: (a) {
                      controller.readMoreButtonHover.value = a;
                    },
                    onTap: () {},
                    isHover: controller.readMoreButtonHover.value),
              )
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Center(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: primary)),
                      ),
                      child: Image.asset(
                        'assets/images/me-4.png',
                        height: 500,
                      ),
                    ),
                  ],
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
        const Flexible(
          flex: 5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
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
              Flexible(
                flex: 1,
                child: Column(
                  children: [
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
          flex: 2,
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
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              'View all ~~>',
              style: whiteText.copyWith(
                fontSize: 16,
                fontWeight: medium,
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
    return Stack(
      children: [
        Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(32),
                  margin: const EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                  ),
                  child: Text(
                    'With great power comes great electricity bill',
                    style: whiteText.copyWith(
                      fontSize: 24,
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
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 80,
          left: Get.width * .25,
          child: Container(
            color: background,
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/up-quote.png',
              width: 25,
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: Get.width * .2,
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
                      'He crafts responsive websites where technologies\nmeet creativity',
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
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/element1.png',
                    width: 155,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeInImage.assetNetwork(
                        fadeInDuration: const Duration(milliseconds: 500),
                        placeholder: 'assets/images/me-half.png',
                        image: 'assets/images/me-half.png',
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
                                  'UNIKOM',
                                  style: whiteText.copyWith(fontSize: 16),
                                )
                              ],
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
            ),
          )
        ],
      ),
    );
  }
}