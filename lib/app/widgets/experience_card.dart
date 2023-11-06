import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/AboutMe/controllers/about_me_controller.dart';
import 'package:portfolio/app/shared/utils.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.experience});
  final String experience;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(border: Border.all(color: grey)),
        child: Obx(
          () => InkWell(
            onHover: (a) {
              Get.find<AboutMeController>().experiencesHover[
                  Get.find<AboutMeController>()
                      .experiences
                      .indexOf(experience)] = a;
            },
            onTap: () {},
            child: Text(
              experience,
              style: Get.find<AboutMeController>().experiencesHover[
                          Get.find<AboutMeController>()
                              .experiences
                              .indexOf(experience)] ==
                      true
                  ? whiteText.copyWith(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    )
                  : greyText.copyWith(
                      fontSize: 16,
                    ),
            ),
          ),
        ));
  }
}
