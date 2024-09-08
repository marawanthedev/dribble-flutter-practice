import 'package:dribblepractice/presentation/views/holiday/holiday.dart';
import 'package:dribblepractice/presentation/views/home/home.dart';
import 'package:dribblepractice/presentation/views/landing/landing.dart';
import 'package:dribblepractice/presentation/views/search/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromRGBO(232, 84, 108, 1),
                secondary: const Color.fromRGBO(76, 76, 76, 1))
            .copyWith(background: const Color(0xFFf3f3f3)),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LandingView(),
        '/holiday': (context) => const HolidayPage(),
        '/search': (context) => const SearchPage(),
      },
      initialRoute: '/',
    );
  }
}
