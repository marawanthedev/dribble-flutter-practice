// icons list referred to from https://pictogrammers.com/library/mdi/

import 'package:dribblepractice/presentation/views/home/constants/navigation_bar_items.dart';
import 'package:dribblepractice/presentation/views/search/widgets/searchCard.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Search Results',
          ),
          actions: const <Widget>[]),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SearchCard(
                isTrending: false,
                onFavoriteClick: (context) {
                  print('favouriting');
                },
              ),
              SearchCard(
                isTrending: true,
                onFavoriteClick: (context) {
                  print('favouriting');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
