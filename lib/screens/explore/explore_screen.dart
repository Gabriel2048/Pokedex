import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/screens/explore/explore_categories.dart';
import 'package:pokedex/screens/explore/search_box.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height * 0.7,
        width: double.infinity,
        child: Card(
          color: Colors.grey[200],
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'What pokemon are you looking for?',
                    style: GoogleFonts.ubuntu(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const SearchBox(),
                  const SizedBox(height: 30),
                  const Expanded(
                    child: ExploreCategories(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
