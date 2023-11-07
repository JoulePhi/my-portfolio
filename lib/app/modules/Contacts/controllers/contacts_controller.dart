import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/navbar_controller.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:emailjs/emailjs.dart';

class ContactsController extends GetxController {
  final sendHover = false.obs;
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final isSending = false.obs;

  @override
  void onReady() {
    super.onReady();
    Get.find<NavbarController>().selectedPage.value =
        Get.find<NavbarController>()
            .navbar
            .indexOf(Get.currentRoute.replaceAll('/', ''));
  }

  void sendEmail() async {
    try {
      isSending.value = true;
      await EmailJS.send(
        'service_i3quzwj',
        'template_4gcxfve',
        {
          'name': nameController.text,
          'email': emailController.text,
          'message': messageController.text,
        },
        const Options(
          publicKey: 'AGh65JyOfABLIbZ5E',
          privateKey: 'uLU_s_vWKXF8KpMO-gMFg',
        ),
      );
      Fluttertoast.showToast(
        msg: 'Message Sended',
        webBgColor: 'linear-gradient(to right, #ffffff, #ffffff)',
        webPosition: 'center',
        textColor: background,
      );
      isSending.value = false;
      nameController.text = '';
      emailController.text = '';
      messageController.text = '';
    } catch (error) {
      Fluttertoast.showToast(
        msg: 'Message failed',
        webBgColor: 'linear-gradient(to right, #ffffff, #ffffff)',
        webPosition: 'center',
        textColor: background,
      );
    }
  }
}
