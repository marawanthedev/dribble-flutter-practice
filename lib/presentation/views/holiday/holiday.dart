import 'package:flutter/material.dart';

class Holiday extends StatelessWidget {
  const Holiday({super.key});

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
      body: const Center(child: Text('HOLIDAY PAGE BABY')),
    );
  }
}
