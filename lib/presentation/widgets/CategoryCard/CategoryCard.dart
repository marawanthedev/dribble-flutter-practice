import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard(
      {super.key,
      required this.icon,
      required this.label,
      required this.index,
      this.bgColor = Colors.white,
      this.contentColor = Colors.black});

  final IconData icon;
  final String label;
  final int index;
  final Color? bgColor;
  final Color? contentColor;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 3,
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: widget.bgColor,
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
                color: widget.contentColor,
              ),
              Text(
                widget.label,
                style: TextStyle(
                    color: widget.contentColor, fontWeight: FontWeight.w600),
              )
            ],
          )),
    );
  }
}
