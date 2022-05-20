import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/screens/categories/pokedex/action_bar.dart';
import 'package:pokedex/screens/categories/pokedex/pokedex_grid.dart';

class PokedexScreen extends StatelessWidget {
  static const String route = '/pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const ActionBar(),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pokedex',
                  style: GoogleFonts.ubuntu(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Expanded(child: PokedexGrid()),
            ],
          ),
        ),
      ),
    );
  }
}
