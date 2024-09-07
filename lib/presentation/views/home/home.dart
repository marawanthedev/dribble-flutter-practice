import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar Demo'), actions: <Widget>[
        IconButton(
            onPressed: () => {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')))
                },
            icon: const Icon(Icons.add_alert))
      ]),
      body: const Center(child: Text('HOME PAGE BABY')),
    );
  }
}
