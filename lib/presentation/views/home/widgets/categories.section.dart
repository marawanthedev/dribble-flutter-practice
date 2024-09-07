import 'package:dribblepractice/presentation/views/home/constants/category_cards.dart';
import 'package:dribblepractice/presentation/widgets/CategoryCard/CategoryCard.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Categories',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryCards.length,
              itemBuilder: (context, index) {
                var card = categoryCards[index];
                return CategoryCard(
                    icon: card.icon, label: card.label, index: index
                    // adding a key is a good idea, will look back into it
                    );
              },
            ))
      ]),
    );
  }
}
