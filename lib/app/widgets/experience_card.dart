import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoverover/hoverover.dart';
import 'package:portfolio/app/modules/AboutMe/controllers/about_me_controller.dart';
import 'package:portfolio/app/shared/utils.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.experience});
  final String experience;
  @override
  Widget build(BuildContext context) {
    return HoverOver(
      builder: (isHover) {
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(border: Border.all(color: grey)),
          child: InkWell(
            onTap: () {},
            child: Text(
              experience,
              style: isHover
                  ? whiteText.copyWith(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    )
                  : greyText.copyWith(
                      fontSize: 16,
                    ),
            ),
          ),
        );
      },
    );
  }
}
