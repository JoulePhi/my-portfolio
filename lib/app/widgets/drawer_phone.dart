import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';
import 'package:portfolio/app/shared/utils.dart';

class DrawerPhone extends GetView<NavbarController> {
  const DrawerPhone({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              spaceH(16),
              Text(
                'JoulePhi',
                style: whiteText.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: onTap,
                  child: Image.asset(
                    'assets/images/close.png',
                    width: 24,
                  ),
                ),
              )
            ],
          ),
          spaceV(42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: controller.navbar
                  .map(
                    (e) => DrawerItem(
                      title: e,
                      onTap: () {
                        controller.selectedPage.value =
                            controller.navbar.indexOf(e);
                        Get.offAllNamed(
                            controller.navbar[controller.selectedPage.value]);
                      },
                      currentPage:
                          controller.navbar[controller.selectedPage.value],
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.title,
      required this.onTap,
      required this.currentPage});
  final String title;
  final Function() onTap;
  final String currentPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      child: GestureDetector(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            text: '#',
            style: primaryText.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
            children: <TextSpan>[
              TextSpan(
                text: title,
                style: currentPage == title
                    ? whiteText.copyWith(
                        fontSize: 32,
                        fontWeight: medium,
                      )
                    : greyText.copyWith(
                        fontSize: 32,
                        fontWeight: medium,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
