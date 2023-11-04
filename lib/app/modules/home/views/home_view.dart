import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/views/navbar.dart';
import 'package:portfolio/app/modules/home/views/project_card.dart';
import 'package:portfolio/app/modules/home/views/skill_card.dart';
import 'package:portfolio/app/shared/utils.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Scrollbar(
        controller: controller.scrollControler,
        child: ListView(
          controller: controller.scrollControler,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .1),
          children: [
            const NavBar(),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
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
                        Text(
                          'He crafts responsive websites where technologies\nmeet creativity',
                          style: greyText.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        spaceV(32),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: primary),
                          ),
                          child: Text(
                            'Contact me!!',
                            style: whiteText.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
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
                              Image.asset(
                                'assets/images/me-half.png',
                                width: MediaQuery.of(context).size.width * .3,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .3,
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
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  left: 250,
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
                  right: 200,
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
            spaceV(100),
            Row(
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
            ),
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
            ),
            Row(
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
            ),
            spaceV(100),
            Row(
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
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: primary),
                        ),
                        child: Text(
                          'Read More ->',
                          style: whiteText.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: Column(
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
                  ),
                )
              ],
            ),
            spaceV(100),
          ],
        ),
      ),
    );
  }
}
