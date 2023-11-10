import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/data/datas_controller.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:portfolio/app/widgets/drawer_phone.dart';
import 'package:portfolio/app/widgets/message_card.dart';
import 'package:portfolio/app/widgets/navbar.dart';
import 'package:portfolio/app/widgets/staggered_animation.dart';

import '../controllers/contacts_controller.dart';

class ContactsView extends GetResponsiveView<ContactsController> {
  ContactsView({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return Scaffold(
      backgroundColor: background,
      body: Obx(() {
        if (Get.find<DataController>().pageIsLoading.value) {
          return const Center(
            child: CircularProgressIndicator(
              color: primary,
            ),
          );
        }
        return ListView(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
          children: [
            const NavBar(currentPage: 'contacts'),
            spaceV(16),
            RichText(
              text: TextSpan(
                text: '/',
                style: primaryText.copyWith(
                  fontSize: 36,
                  fontWeight: semiBold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'contacts',
                    style: whiteText.copyWith(
                      fontSize: 36,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            spaceV(16),
            Text(
              'How can you reach me?',
              style: greyText.copyWith(
                fontSize: 16,
              ),
            ),
            spaceV(48),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 4,
                  child: StaggeredAnimate(
                    position: 0,
                    direction: Axis.horizontal,
                    offset: -100,
                    child: Text(
                      Get.find<DataController>()
                          .contacts
                          .description
                          .toString(),
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: StaggeredAnimate(
                    position: 1,
                    direction: Axis.horizontal,
                    child: Wrap(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
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
                                    style: whiteText.copyWith(
                                        fontSize: 16, fontWeight: semiBold),
                                  ),
                                  spaceV(16),
                                  MessageCard(
                                      icon: 'assets/images/email.png',
                                      contacts: Get.find<DataController>()
                                          .contacts
                                          .email
                                          .toString()),
                                  spaceV(16),
                                  MessageCard(
                                      icon: 'assets/images/whatsapp.png',
                                      contacts: Get.find<DataController>()
                                          .contacts
                                          .number
                                          .toString()),
                                  spaceV(16),
                                  MessageCard(
                                      icon: 'assets/images/instagram.png',
                                      contacts: Get.find<DataController>()
                                          .contacts
                                          .instagram
                                          .toString()),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            spaceV(48),
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 24,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'reach-me-now',
                    style: whiteText.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            spaceV(48),
            Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Get.width * .5,
                    child: Row(
                      children: [
                        Expanded(
                          child: StaggeredAnimate(
                            position: 0,
                            direction: Axis.horizontal,
                            offset: -100,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: grey),
                              ),
                              child: TextFormField(
                                controller: controller.nameController,
                                style: whiteText.copyWith(fontSize: 16),
                                cursorColor: grey,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Name',
                                  hintStyle: greyText.copyWith(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        spaceH(16),
                        Expanded(
                          child: StaggeredAnimate(
                            position: 1,
                            direction: Axis.horizontal,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: grey),
                              ),
                              child: TextFormField(
                                controller: controller.emailController,
                                style: whiteText.copyWith(fontSize: 16),
                                cursorColor: grey,
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !value.contains('@')) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Email',
                                  hintStyle: greyText.copyWith(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  spaceV(16),
                  SizedBox(
                    width: Get.width * .5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StaggeredAnimate(
                          position: 0,
                          direction: Axis.vertical,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: grey),
                            ),
                            child: TextFormField(
                              controller: controller.messageController,
                              style: whiteText.copyWith(fontSize: 16),
                              cursorColor: grey,
                              maxLines: 8,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Message',
                                hintStyle: greyText.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        spaceV(16),
                        StaggeredAnimate(
                          position: 1,
                          direction: Axis.vertical,
                          child: Obx(
                            () => InkWell(
                              onTap: () {
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  controller.sendEmail();
                                }
                              },
                              onHover: (a) {
                                controller.sendHover.value = a;
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: primary),
                                  color: controller.sendHover.value
                                      ? primary.withOpacity(.2)
                                      : Colors.transparent,
                                ),
                                child: controller.isSending.value
                                    ? const SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(
                                          color: primary,
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : Text(
                                        'Send',
                                        style: whiteText.copyWith(
                                          fontSize: 16,
                                          fontWeight: medium,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            spaceV(90),
            const Divider(
              color: grey,
            ),
            spaceV(32),
            Text(
              '© Copyright 2023. Made by JoulePhi',
              style: greyText.copyWith(fontSize: 16),
            ),
            spaceV(32),
          ],
        );
      }),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      key: controller.scaffoldState,
      drawer: DrawerPhone(
        onTap: () {
          controller.scaffoldState.currentState!.closeDrawer();
        },
      ),
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        automaticallyImplyLeading: false,
        leading: null,
        title: Text(
          'JoulePhi',
          style: whiteText.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                controller.scaffoldState.currentState!.openDrawer();
              },
              child: Image.asset(
                'assets/images/burger.png',
                width: 24,
              ),
            ),
          )
        ],
      ),
      body: Obx(() {
        if (Get.find<DataController>().pageIsLoading.value) {
          return const Center(
            child: CircularProgressIndicator(
              color: primary,
            ),
          );
        }
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
          children: [
            spaceV(16),
            RichText(
              text: TextSpan(
                text: '/',
                style: primaryText.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'contacts',
                    style: whiteText.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            spaceV(16),
            Text(
              'How can you reach me?',
              style: greyText.copyWith(
                fontSize: 12,
              ),
            ),
            spaceV(36),
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 24,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'contacts',
                    style: whiteText.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            spaceV(32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StaggeredAnimate(
                  position: 0,
                  direction: Axis.horizontal,
                  offset: -100,
                  child: Text(
                    Get.find<DataController>().contacts.description.toString(),
                    style: greyText.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ),
                spaceV(32),
                StaggeredAnimate(
                  position: 1,
                  direction: Axis.horizontal,
                  child: Wrap(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
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
                                  style: whiteText.copyWith(
                                      fontSize: 16, fontWeight: semiBold),
                                ),
                                spaceV(16),
                                MessageCard(
                                    icon: 'assets/images/email.png',
                                    contacts: Get.find<DataController>()
                                        .contacts
                                        .email
                                        .toString()),
                                spaceV(16),
                                MessageCard(
                                    icon: 'assets/images/whatsapp.png',
                                    contacts: Get.find<DataController>()
                                        .contacts
                                        .number
                                        .toString()),
                                spaceV(16),
                                MessageCard(
                                    icon: 'assets/images/instagram.png',
                                    contacts: Get.find<DataController>()
                                        .contacts
                                        .instagram
                                        .toString()),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            spaceV(32),
            RichText(
              text: TextSpan(
                text: '#',
                style: primaryText.copyWith(
                  fontSize: 24,
                  fontWeight: medium,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'reach-me-now',
                    style: whiteText.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            spaceV(32),
            Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Get.width,
                    child: Row(
                      children: [
                        Expanded(
                          child: StaggeredAnimate(
                            position: 0,
                            direction: Axis.horizontal,
                            offset: -100,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: grey),
                              ),
                              child: TextFormField(
                                controller: controller.nameController,
                                style: whiteText.copyWith(fontSize: 16),
                                cursorColor: grey,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Name',
                                  hintStyle: greyText.copyWith(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        spaceH(16),
                        Expanded(
                          child: StaggeredAnimate(
                            position: 1,
                            direction: Axis.horizontal,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: grey),
                              ),
                              child: TextFormField(
                                controller: controller.emailController,
                                style: whiteText.copyWith(fontSize: 16),
                                cursorColor: grey,
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !value.contains('@')) {
                                    return 'Please enter a valid email';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Email',
                                  hintStyle: greyText.copyWith(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  spaceV(16),
                  SizedBox(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StaggeredAnimate(
                          position: 0,
                          direction: Axis.vertical,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: grey),
                            ),
                            child: TextFormField(
                              controller: controller.messageController,
                              style: whiteText.copyWith(fontSize: 16),
                              cursorColor: grey,
                              maxLines: 8,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Message',
                                hintStyle: greyText.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        spaceV(16),
                        StaggeredAnimate(
                          position: 1,
                          direction: Axis.vertical,
                          child: Obx(
                            () => InkWell(
                              onTap: () {
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  controller.sendEmail();
                                }
                              },
                              onHover: (a) {
                                controller.sendHover.value = a;
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: primary),
                                  color: controller.sendHover.value
                                      ? primary.withOpacity(.2)
                                      : Colors.transparent,
                                ),
                                child: controller.isSending.value
                                    ? const SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(
                                          color: primary,
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : Text(
                                        'Send',
                                        style: whiteText.copyWith(
                                          fontSize: 16,
                                          fontWeight: medium,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            spaceV(32),
            const Divider(
              color: grey,
            ),
            spaceV(16),
            Text(
              '© Copyright 2023. Made by JoulePhi',
              style: greyText.copyWith(fontSize: 12),
            ),
            spaceV(16),
          ],
        );
      }),
    );
  }
}
