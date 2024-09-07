import 'dart:math';

// icons list referred to from https://pictogrammers.com/library/mdi/

import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:dribblepractice/presentation/widgets/Button/button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
            Row(
              children: [
                Transform.rotate(
                  angle: -pi / 3,
                  child: IconButton(
                    onPressed: () => {print('opening messages list')},
                    icon: Icon(
                      MdiIcons.sendVariantOutline,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => {print('opening notification list')},
                  icon: Icon(MdiIcons.bellOutline),
                ),
              ],
            ),
          ]),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(AppImages.thailandBg),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // Vertically center
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Horizontally center
                          children: [
                            const Text(
                              'Thailand',
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                              'And Explore the world',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            CustomElevatedButton(
                              onPressed: () => print('Book Now'),
                              text: 'Book Now',
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                child: const Text('hi'),
              ),
              Container(
                child: const Text('hi'),
              ),
              Container(
                child: const Text('hi'),
              )
            ],
          )),
    );
  }
}
