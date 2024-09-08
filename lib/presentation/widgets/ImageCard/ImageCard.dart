import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.imagePath,
    required this.size,
    required this.cardUpperOverlay,
    this.cardLowerOverlay,
  });

  final String imagePath;
  final Size size;
  final Widget cardUpperOverlay;
  final Widget? cardLowerOverlay;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover)),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
                padding: const EdgeInsets.all(8), child: cardUpperOverlay),
          ),
          if (cardLowerOverlay != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: cardLowerOverlay!,
            )
        ],
      ),
    );
  }
}
