import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/utils.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.icon, required this.contacts});
  final String icon;
  final String contacts;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 25,
          color: grey,
        ),
        spaceH(10),
        Text(
          contacts,
          style: greyText.copyWith(fontSize: 16),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
