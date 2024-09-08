import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:dribblepractice/presentation/widgets/ImageCard/ImageCard.dart';
import 'package:dribblepractice/utils/ImageCardSize.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageCard(
            imagePath: AppImages.thailandBg,
            size: ImageCardSize.getSize(ImageCardSizes.lg, context),
            cardUpperOverlay: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      MdiIcons.mapMarkerOutline,
                      size: 24,
                      color: Colors.white,
                    ),
                    const Text(
                      'Dubai',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(130, 140, 127, 1)),
                  child: IconButton(
                    onPressed: () => print('favourite'),
                    icon: Icon(MdiIcons.heartOutline),
                    color: Colors.white,
                    iconSize: 20,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageCard(
                imagePath: AppImages.thailandBg,
                size: ImageCardSize.getSize(ImageCardSizes.md, context),
                cardUpperOverlay: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          MdiIcons.mapMarkerOutline,
                          size: 16,
                          color: Colors.white,
                        ),
                        const Text(
                          'Thailand',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(130, 140, 127, 1)),
                      child: IconButton(
                        onPressed: () => print('favourite'),
                        icon: Icon(MdiIcons.heartOutline),
                        color: Colors.white,
                        iconSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              ImageCard(
                imagePath: AppImages.thailandBg,
                size: ImageCardSize.getSize(ImageCardSizes.md, context),
                cardUpperOverlay: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          MdiIcons.mapMarkerOutline,
                          size: 16,
                          color: Colors.white,
                        ),
                        const Text(
                          'Bali',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(130, 140, 127, 1)),
                      child: IconButton(
                        onPressed: () => print('favourite'),
                        icon: Icon(MdiIcons.heartOutline),
                        color: Colors.white,
                        iconSize: 12,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          ImageCard(
            imagePath: AppImages.thailandBg,
            size: ImageCardSize.getSize(ImageCardSizes.lg, context),
            cardUpperOverlay: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      MdiIcons.mapMarkerOutline,
                      size: 16,
                      color: Colors.white,
                    ),
                    const Text(
                      'Singapore',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(130, 140, 127, 1)),
                  child: IconButton(
                    onPressed: () => print('favourite'),
                    icon: Icon(MdiIcons.heartOutline),
                    color: Colors.white,
                    iconSize: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
