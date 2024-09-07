import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('AppBar Demo'), actions: <Widget>[
      IconButton(
          onPressed: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')))
              },
          icon: const Icon(Icons.add_alert))
    ]);
  }
}
