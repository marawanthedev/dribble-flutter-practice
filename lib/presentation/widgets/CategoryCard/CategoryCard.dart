import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard(
      {super.key,
      required this.icon,
      required this.label,
      required this.index});

  final IconData icon;
  final String label;
  final int index;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  late Color bgColor;

  @override
  void initState() {
    print(context);
    bgColor = Colors.yellow;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hovered) {
        print('hovering $hovered');
        setState(() {
          if (hovered) {
            bgColor = Colors.red;
          } else {
            bgColor = Theme.of(context).colorScheme.primary;
          }
        });
      },
      child: Card(
        shadowColor: Colors.black,
        elevation: 3,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: bgColor,
        child: Container(
            height: 110,
            width: 100,
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  widget.icon,
                  size: 60,
                  color: Colors.white,
                ),
                Text(
                  widget.label,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            )),
      ),
    );
  }
}
