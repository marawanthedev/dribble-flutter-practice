import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoryData {
  final IconData icon;
  final String label;

  const CategoryData({required this.icon, required this.label});
}

List<CategoryData> categoryCards = [
  CategoryData(icon: MdiIcons.beach, label: 'Holidays'),
  CategoryData(icon: MdiIcons.carKey, label: 'Rental'),
  CategoryData(icon: MdiIcons.airplaneCheck, label: 'Travel Partner'),
  CategoryData(icon: MdiIcons.hotTub, label: 'Hotels'),
  CategoryData(icon: MdiIcons.food, label: 'Food tasting'),
];
