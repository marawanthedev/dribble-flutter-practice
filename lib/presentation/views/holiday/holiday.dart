import 'dart:math';

// icons list referred to from https://pictogrammers.com/library/mdi/

import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:dribblepractice/presentation/views/holiday/widgets/posts.section.dart';
import 'package:dribblepractice/presentation/views/holiday/widgets/stories.section.dart';
import 'package:dribblepractice/presentation/views/home/constants/navigation_bar_items.dart';
import 'package:dribblepractice/presentation/views/home/widgets/categories.section.dart';
import 'package:dribblepractice/presentation/views/home/widgets/gallery.section.dart';
import 'package:dribblepractice/presentation/views/home/widgets/hero.section.dart';
import 'package:dribblepractice/presentation/views/home/widgets/motive.section.dart';
import 'package:dribblepractice/presentation/widgets/ImageCard/ImageCard.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HolidayPage extends StatefulWidget {
  const HolidayPage({super.key});

  @override
  State<HolidayPage> createState() => _HomePageState();
}

class _HomePageState extends State<HolidayPage> {
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
          padding: const EdgeInsets.all(16.0),
          child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [StoriesSection(), PostsSection()]))),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.black,
          currentIndex: currIndex,
          onTap: (index) {
            print('index $index');
            if (index != 2) setState(() => currIndex = index);
          },
          iconSize: 18,
          items: [
            ...navigationBarItems.map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.label,
              ),
            ),
          ]),
      floatingActionButton: Container(
        child: CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.primary,
          child: Icon(
            MdiIcons.plus,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
