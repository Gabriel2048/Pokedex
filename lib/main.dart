import 'package:flutter/material.dart';
import 'package:pokedex/screens/categories/pokedex/pokedex_screen.dart';
import 'package:pokedex/screens/explore/explore_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ExploreScreen(),
      routes: {
        PokedexScreen.route: (context) => const PokedexScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
