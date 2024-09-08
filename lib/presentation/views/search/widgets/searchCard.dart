import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:dribblepractice/presentation/widgets/Button/button.dart';
import 'package:dribblepractice/presentation/widgets/ImageCard/ImageCard.dart';
import 'package:dribblepractice/utils/ImageCardSize.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

typedef OnFavouriteCallback = void Function(BuildContext context);

class SearchCard extends StatelessWidget {
  const SearchCard(
      {super.key, required this.isTrending, required this.onFavoriteClick});

  final bool isTrending;
  final OnFavouriteCallback onFavoriteClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 3,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            // image section
            ImageCard(
              imagePath: AppImages.dubaiBg,
              size: ImageCardSize.getSize(ImageCardSizes.xl, context),
              cardUpperOverlay: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isTrending ? Colors.white : Colors.transparent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (isTrending) // probably not the best idea to have two conditons, but thats to avoid having another widget wrapper
                          Icon(
                            MdiIcons.fire,
                            size: 24,
                            color: Colors.orange,
                          ),
                        if (isTrending)
                          const Text(
                            'Trending',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () => onFavoriteClick(context),
                      icon: Icon(MdiIcons.heartOutline),
                      color: AppColors.primary,
                      iconSize: 20,
                    ),
                  )
                ],
              ),
              cardLowerOverlay: Container(
                height: 30,
                margin: const EdgeInsets.only(bottom: 15),
                // no specified width to adapt with content and have padding
                padding: const EdgeInsets.only(left: 15, right: 15),
                color: AppColors.teritiary,
                child: const Center(
                    child: Text(
                  'Pro Agency 10% off',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
            ),
            // below image section
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Manali - 5N/6 Days',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        const Text(
                          'Manal - Kasol - Simta',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          // this would never be done like this, but its 2am and i have work tmrw
                          // what i would do is a loop and every add spacing for all items except last one
                          children: [
                            Icon(MdiIcons.contactlessPaymentCircleOutline),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(MdiIcons.contactlessPaymentCircleOutline),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(MdiIcons.contactlessPaymentCircleOutline),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(MdiIcons.contactlessPaymentCircleOutline),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(MdiIcons.contactlessPaymentCircleOutline),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$20,000',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Available seat'), Text('6/10')],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 5,
                          margin: const EdgeInsets.only(top: 5),
                          child: Stack(
                            children: [
                              Container(
                                width: 150,
                                height: 15,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                width: 120,
                                height: 15,
                                decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
            // pink section
            Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.primaryLight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Firqah Lab Agency',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Icon(MdiIcons.checkCircleOutline, color: Colors.black)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MdiIcons.mapMarkerOutline, size: 25),
                        const Text('Chattogram,Bangladesh')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Icon(
                                MdiIcons.star,
                                color: AppColors.yellow,
                                key: ValueKey(
                                    i), // Optional key for unique identification
                              ),
                            const Text('1.4K reviews')
                          ],
                        ),
                        Row(
                          children: [Icon(MdiIcons.eye), const Text('24')],
                        )
                      ],
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                      text: 'View Details',
                      onPressed: () => {print('view details')},
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                  CustomElevatedButton(
                      text: 'Book now',
                      onPressed: () => {print('book now')},
                      textStyle: const TextStyle(color: Colors.black),
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black, width: .75),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
