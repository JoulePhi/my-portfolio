import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/models/about_model.dart';
import 'package:portfolio/app/data/models/contact_model.dart';
import 'package:portfolio/app/data/models/home_model.dart';
import 'package:portfolio/app/data/models/project_model.dart';
import 'dart:convert';
import 'package:flutterwebapp_reload_detector/flutterwebapp_reload_detector.dart';

class DataController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final pageIsLoading = false.obs;
  HomeModel homeModel = HomeModel();
  AboutModel aboutModel = AboutModel();
  List<ProjectModel> projects = [];
  ContactModel contacts = ContactModel();

  @override
  void onInit() async {
    pageIsLoading.value = true;
    final home = await firestore.collection('datas').doc('home').get();
    final about = await firestore.collection('datas').doc('about-me').get();
    final project = await firestore.collection('datas').doc('projects').get();
    final contact = await firestore.collection('datas').doc('contacts').get();
    Map<String, dynamic> projectsMap = Map.from(project.data()!);
    homeModel = HomeModel.fromJson(home.data());
    aboutModel = AboutModel.fromJson(about.data());
    contacts = ContactModel.fromJson(contact.data());
    projects = projectsMap.entries.map((entry) {
      return ProjectModel.fromJson(entry.key, entry.value);
    }).toList();
    pageIsLoading.value = false;
    super.onInit();
  }
}
