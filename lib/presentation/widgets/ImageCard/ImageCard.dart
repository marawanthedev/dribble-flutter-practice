import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key,
      required this.imagePath,
      required this.size,
      required this.cardUpperOverlay,
      required this.cardLowerOverlay});

  final String imagePath;
  final Size size;
  final Widget cardUpperOverlay;
  final Widget cardLowerOverlay;

  // todo to add class to handle sizing and

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(AppImages.thailandBg),
          fit: BoxFit.cover,
        ),
      ),
      child: const Text('hi'),
    );
  }
}
