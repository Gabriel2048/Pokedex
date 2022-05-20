import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PokedexCard extends StatelessWidget {
  final String pokemonName;
  const PokedexCard({required this.pokemonName, Key? key}) : super(key: key);

  static final _border = BorderRadius.circular(25);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: _border,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: _border,
          color: Colors.red,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              pokemonName,
              style: GoogleFonts.ubuntu(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
