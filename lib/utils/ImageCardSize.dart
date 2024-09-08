import 'package:flutter/material.dart';

enum ImageCardSizes { xl, lg, md, sm }

class ImageCardSize {
  static Size getSize(ImageCardSizes size, BuildContext ctx) {
    switch (size) {
      case ImageCardSizes.xl:
        return Size(MediaQuery.of(ctx).size.width, 225);
      case ImageCardSizes.lg:
        return Size(
            MediaQuery.of(ctx).size.width, 150); // Adjust dimensions as needed
      case ImageCardSizes.md:
        return Size(MediaQuery.of(ctx).size.width / 2.25, 100);
      case ImageCardSizes.sm:
        return Size(MediaQuery.of(ctx).size.width / 4.75, 150);
      default:
        return const Size(0, 0);
    }
  }
}
