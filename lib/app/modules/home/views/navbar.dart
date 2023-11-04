import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/shared/utils.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 100,
        ),
        Text(
          'JoulePhi',
          style: whiteText.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
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
                      text: 'home',
                      style: whiteText.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      )),
                ],
              ),
            ),
            spaceH(32),
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'works',
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      )),
                ],
              ),
            ),
            spaceH(32),
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'about-me',
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      )),
                ],
              ),
            ),
            spaceH(32),
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
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      )),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
