import 'package:flutter/material.dart';
import 'package:pokedex/screens/categories/pokedex/pokedex_card.dart';

class PokedexGrid extends StatelessWidget {
  const PokedexGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.35,
      ),
      itemCount: 30,
      itemBuilder: (_, index) => const PokedexCard(
        pokemonName: 'Name',
      ),
    );
  }
}
