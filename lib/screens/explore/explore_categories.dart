import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokedex/screens/explore/category_card.dart';

class ExploreCategories extends StatelessWidget {
  const ExploreCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 3,
      crossAxisSpacing: 10,
      childAspectRatio: 21 / 10,
      children: const [
        CategoryCard(title: 'Pokedex', color: Color.fromARGB(255, 90, 225, 100)),
        CategoryCard(title: 'Moves', color: Color.fromARGB(255, 255, 45, 62)),
        CategoryCard(title: 'Abilities', color: Color.fromARGB(255, 64, 166, 250)),
        CategoryCard(title: 'Items', color: Color.fromARGB(255, 223, 203, 29)),
        CategoryCard(title: 'Locations', color: Colors.purple),
        CategoryCard(title: 'Type Charts', color: Colors.brown),
      ],
    );
  }
}
