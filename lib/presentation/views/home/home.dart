import 'package:dribblepractice/presentation/views/home/widgets/categories.section.dart';
import 'package:dribblepractice/presentation/views/home/widgets/gallery.section.dart';
import 'package:dribblepractice/presentation/views/home/widgets/hero.section.dart';
import 'package:dribblepractice/presentation/views/home/widgets/motive.section.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          children: [
            HeroSection(),
            CategoriesSection(),
            Motive(),
            GallerySection()
          ],
        ),
      ),
    );
  }
}
