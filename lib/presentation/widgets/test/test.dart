import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        // Use the MdiIcons class for the IconData
        icon: Icon(MdiIcons.sword),
        onPressed: () {
          print('Using the sword');
        });
  }
}
