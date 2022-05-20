import 'package:flutter/material.dart';
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
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const ExploreScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}