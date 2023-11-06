import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/shared/utils.dart';

class NavBar extends GetView<NavbarController> {
  const NavBar({super.key, required this.currentPage});
  final String currentPage;
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
        Obx(() => Row(
              children: controller.navbar
                  .map((e) => NavbarItem(
                      title: e,
                      isSelected:
                          controller.navbar[controller.selectedPage.value],
                      onHover: (a) {
                        controller.navbarIsHover[controller.navbar.indexOf(e)] =
                            a;
                      },
                      onTap: () {
                        controller.selectedPage.value =
                            controller.navbar.indexOf(e);

                        Get.offAllNamed(
                            '/${controller.navbar[controller.selectedPage.value]}');
                      },
                      isHover: controller
                          .navbarIsHover[controller.navbar.indexOf(e)]))
                  .toList(),
            ))
      ],
    );
  }
}

class NavbarItem extends StatelessWidget {
  const NavbarItem(
      {super.key,
      required this.title,
      required this.onHover,
      required this.onTap,
      required this.isHover,
      required this.isSelected});
  final String title;
  final Function(bool) onHover;
  final Function() onTap;
  final bool isHover;
  final String isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: onHover,
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: RichText(
          text: TextSpan(
            text: '#',
            style: primaryText.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            children: <TextSpan>[
              TextSpan(
                text: title,
                style: title == isSelected
                    ? whiteText.copyWith(fontSize: 16, fontWeight: medium)
                    : (isHover
                        ? lightGreyText.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          )
                        : greyText.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
