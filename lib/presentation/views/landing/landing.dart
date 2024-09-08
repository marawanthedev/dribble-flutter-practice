import 'package:dribblepractice/presentation/views/home/constants/navigation_bar_items.dart';
import 'package:dribblepractice/presentation/views/home/home.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  int currIndex = 0;

  void setPage(int index) => setState(() {
        currIndex = index;
      });

  final pages = [
    const HomePage(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              Row(
                // First row with map marker and city name
                children: [
                  Icon(MdiIcons.mapMarkerOutline),
                  const Text('Hyderabad,India'),
                ],
              ),
              Icon(MdiIcons.chevronDown), // Second row with chevron icon
            ],
          ),
          actions: <Widget>[
            Transform.rotate(
              angle: -math.pi / 3,
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
            )
          ]),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: pages[currIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.black,
          currentIndex: currIndex,
          onTap: (index) {
            print('index $index');
            if (index < 2) setState(() => currIndex = index);
            if (index > 2) setState(() => currIndex = index - 1);
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
