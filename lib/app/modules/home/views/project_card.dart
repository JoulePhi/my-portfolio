import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/utils.dart';

class Projectcard extends StatelessWidget {
  const Projectcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
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
                        style: greyText.copyWith(fontSize: 16),
                      ),
                      spaceH(8),
                      Text(
                        'Python',
                        style: greyText.copyWith(fontSize: 16),
                      ),
                      spaceH(8),
                      Text(
                        'SCSS',
                        style: greyText.copyWith(fontSize: 16),
                      ),
                      spaceH(8),
                      Text(
                        'Flask',
                        style: greyText.copyWith(fontSize: 16),
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
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                  spaceV(16),
                  Text(
                    'Minecraft servers hosting',
                    style: greyText.copyWith(fontSize: 16),
                  ),
                  spaceV(16),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration:
                            BoxDecoration(border: Border.all(color: primary)),
                        child: Text(
                          'Live <~~>',
                          style: whiteText.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                      spaceH(16),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectcardPhone extends StatelessWidget {
  const ProjectcardPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
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
