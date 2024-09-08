import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:dribblepractice/presentation/widgets/Button/button.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    onPressed: () => Navigator.pushNamed(context, '/holiday'),
                    text: 'Book Now',
                  )
                ],
              ),
            )
          ],
        ));
  }
}
