import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  const CategoryCard({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(title,
              style: GoogleFonts.ubuntu(
                  textStyle: Theme.of(context).textTheme.titleSmall,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
