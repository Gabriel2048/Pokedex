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
        CategoryCard(title: 'Pokedex'),
        CategoryCard(title: 'Moves'),
        CategoryCard(title: 'Abilities'),
        CategoryCard(title: 'Items'),
        CategoryCard(title: 'Locations'),
        CategoryCard(title: 'Type Charts'),
      ],
    );
  }
}
