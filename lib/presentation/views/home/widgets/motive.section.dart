import 'package:dribblepractice/presentation/widgets/Button/button.dart';
import 'package:flutter/material.dart';

// probably not  the best naming, will get back to it
class Motive extends StatelessWidget {
  const Motive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text(
              'What Destination do you like to go to?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          CustomElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/search'),
            text: 'See More',
          )
        ],
      ),
    );
  }
}
