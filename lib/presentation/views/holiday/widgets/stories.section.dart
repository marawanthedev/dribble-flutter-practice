import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:dribblepractice/presentation/widgets/ImageCard/ImageCard.dart';
import 'package:dribblepractice/utils/ImageCardSize.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

// an idea to optimize such a scenario in which we have space betwen each, a loop and we add a row of 2 widgets, the image card and sized box besides for all elements except last one
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ImageCard(
            size: ImageCardSize.getSize(ImageCardSizes.sm, context),
            cardCenterOverlay: Icon(
              MdiIcons.plusCircle,
              color: AppColors.primary,
              size: 40,
            ),
            boxDecoration: noBackgroundImageCardBoxDecoration,
          ),
          const SizedBox(
            width: 10,
          ),
          ImageCard(
            imagePath: AppImages.thailandBg,
            size: ImageCardSize.getSize(ImageCardSizes.sm, context),
          ),
          const SizedBox(
            width: 10,
          ),
          ImageCard(
            imagePath: AppImages.thailandBg,
            size: ImageCardSize.getSize(ImageCardSizes.sm, context),
          ),
          const SizedBox(
            width: 10,
          ),
          ImageCard(
            imagePath: AppImages.thailandBg,
            size: ImageCardSize.getSize(ImageCardSizes.sm, context),
          ),
        ],
      ),
    );
  }
}
