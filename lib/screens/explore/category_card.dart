import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String? onTapNavigationPath;
  final Color? color;
  const CategoryCard(
      {required this.title,
      required this.color,
      this.onTapNavigationPath,
      Key? key})
      : super(key: key);

  static final _borderRadius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shadowColor: color,
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: _borderRadius,
      ),
      child: InkWell(
        onTap: () {
          if (onTapNavigationPath != null) {
            Navigator.pushNamed(context, onTapNavigationPath ?? '');
          }
        },
        borderRadius: _borderRadius,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: GoogleFonts.ubuntu(
                  textStyle: Theme.of(context).textTheme.titleSmall,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
