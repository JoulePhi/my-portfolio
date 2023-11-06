import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/utils.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.skills, required this.title});
  final String title;
  final List<String> skills;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: grey),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: whiteText.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const Divider(
            color: grey,
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills
                .map(
                  (e) => Text(
                    e,
                    style: greyText.copyWith(
                      fontSize: 16,
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
