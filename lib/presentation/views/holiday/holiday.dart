import 'dart:math';

// icons list referred to from https://pictogrammers.com/library/mdi/

import 'package:dribblepractice/presentation/views/holiday/widgets/posts.section.dart';
import 'package:dribblepractice/presentation/views/holiday/widgets/stories.section.dart';
import 'package:dribblepractice/presentation/views/home/constants/navigation_bar_items.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HolidayPage extends StatefulWidget {
  const HolidayPage({super.key});

  @override
  State<HolidayPage> createState() => _HolidayPageState();
}

class _HolidayPageState extends State<HolidayPage> {
  int currIndex = 0;

  Color getIndexColor(int index) =>
      currIndex == index ? AppColors.black : AppColors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'The Holiday',
          ),
          actions: <Widget>[
            Transform.rotate(
              angle: -pi / 3,
              child: IconButton(
                onPressed: () => {print('opening messages list')},
                icon: Icon(
                  MdiIcons.sendVariantOutline,
                ),
                iconSize: 24,
                padding: EdgeInsets.zero,
                splashRadius: 1,
                constraints: const BoxConstraints(maxWidth: 24, maxHeight: 24),
                alignment: Alignment.centerRight,
              ),
            ),
            IconButton(
              onPressed: () => {print('opening notification list')},
              icon: Icon(MdiIcons.bellOutline),
              padding: EdgeInsets.zero,
              iconSize: 24,
              constraints: const BoxConstraints(maxWidth: 24, maxHeight: 24),
              alignment: Alignment.center,
              // icon button does have internal padding that shoiuld be removed, todo later
            )
          ]),
      body: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(16.0),
          child: const Column(
              children: [StoriesSection(), Expanded(child: PostsSection())])),
    );
  }
}
