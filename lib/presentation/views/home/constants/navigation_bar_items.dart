import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavigationItem {
  final IconData icon;
  final String label;
  bool isDisabled;

  NavigationItem(
      {required this.icon, required this.label, this.isDisabled = false});
}

List<NavigationItem> navigationBarItems = [
  NavigationItem(icon: MdiIcons.homeOutline, label: 'Home'),
  NavigationItem(icon: MdiIcons.wifi, label: 'Share'),
  NavigationItem(icon: MdiIcons.bedEmpty, label: '', isDisabled: true),
  NavigationItem(icon: MdiIcons.sale, label: 'Promotion'),
  NavigationItem(icon: MdiIcons.accountCircleOutline, label: 'Profile'),
];
