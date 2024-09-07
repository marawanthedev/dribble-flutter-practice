import 'package:dribblepractice/presentation/views/holiday/holiday.dart';
import 'package:dribblepractice/presentation/views/home/home.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/holiday': (context) => const Holiday(),
        '/search': (context) => const Search(),
      },
      initialRoute: '/',
    );
  }
}
