import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:portfolio/app/data/models/project_model.dart';
import 'package:portfolio/app/shared/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Projectcard extends StatelessWidget {
  const Projectcard({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: Image.network(
              projectModel.thumbnail!,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: grey),
              ),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: projectModel.technologies!
                      .map(
                        (e) => Row(
                          children: [
                            Text(
                              e,
                              style: greyText.copyWith(fontSize: 16),
                            ),
                            spaceH(8),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectModel.name.toString(),
                  style: whiteText.copyWith(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
                spaceV(16),
                Text(
                  projectModel.description.toString(),
                  style: greyText.copyWith(fontSize: 16),
                ),
                spaceV(16),
                Row(
                  children: [
                    projectModel.source != null
                        ? HoverOver(
                            builder: (isHover) {
                              return InkWell(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      projectModel.source.toString()));
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 250),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: isHover
                                        ? primary.withOpacity(.2)
                                        : Colors.transparent,
                                    border: Border.all(color: primary),
                                  ),
                                  child: Text(
                                    'Source ~~>',
                                    style: whiteText.copyWith(
                                      fontSize: 16,
                                      fontWeight: medium,
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : Container(),
                    spaceH(16),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCardGrid extends StatelessWidget {
  const ProjectCardGrid({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: Image.network(
              projectModel.thumbnail!,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: grey),
              ),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: projectModel.technologies!
                      .map(
                        (e) => Row(
                          children: [
                            Text(
                              e,
                              style: greyText.copyWith(fontSize: 16),
                            ),
                            spaceH(8),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectModel.name.toString(),
                  style: whiteText.copyWith(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
                spaceV(16),
                Text(
                  projectModel.description.toString(),
                  style: greyText.copyWith(fontSize: 16),
                ),
                spaceV(16),
                Row(
                  children: [
                    projectModel.source != null
                        ? HoverOver(
                            builder: (isHover) {
                              return InkWell(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      projectModel.source.toString()));
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 250),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: isHover
                                        ? primary.withOpacity(.2)
                                        : Colors.transparent,
                                    border: Border.all(color: primary),
                                  ),
                                  child: Text(
                                    'Source ~~>',
                                    style: whiteText.copyWith(
                                      fontSize: 16,
                                      fontWeight: medium,
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : Container(),
                    spaceH(16),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectcardPhone extends StatelessWidget {
  const ProjectcardPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 200,
            child: Placeholder(),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: grey),
              ),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'HTML',
                      style: greyText.copyWith(fontSize: 12),
                    ),
                    spaceH(8),
                    Text(
                      'Python',
                      style: greyText.copyWith(fontSize: 12),
                    ),
                    spaceH(8),
                    Text(
                      'SCSS',
                      style: greyText.copyWith(fontSize: 12),
                    ),
                    spaceH(8),
                    Text(
                      'Flask',
                      style: greyText.copyWith(fontSize: 12),
                    ),
                    spaceH(8),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ChertNodes',
                  style: whiteText.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
