import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

var noBackgroundImageCardBoxDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(
    color: Colors.grey, // Replace with your desired border color
    width: 1.0, // Adjust the border width as needed
  ),
  borderRadius: BorderRadius.circular(10),
);

class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key,
      required this.size,
      this.imagePath,
      this.cardUpperOverlay,
      this.cardLowerOverlay,
      this.cardCenterOverlay,
      this.boxDecoration,
      this.imageFit = BoxFit.cover});

  final String? imagePath;
  final Size size;
  final Widget? cardUpperOverlay;
  final Widget? cardLowerOverlay;
  final Widget? cardCenterOverlay;
  final BoxFit? imageFit;
  final BoxDecoration? boxDecoration;

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
            decoration: boxDecoration ??
                BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color:
                          Colors.grey, // Replace with your desired border color
                      width: 1.0, // Adjust the border width as needed
                    ),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(imagePath!), fit: BoxFit.cover)),
          ),
          if (cardCenterOverlay != null)
            Center(
                child: Center(
              child: Icon(MdiIcons.plus),
            )),
          if (cardUpperOverlay != null)
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
