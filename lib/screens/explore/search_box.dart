import 'package:flutter/material.dart';
import 'package:pokedex/layout/border_radius/symmetric_border_radius.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const SymmetricBorderRadius.horizonatal(Radius.circular(50)),
      ),
      height: 55,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(Icons.search),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search a Pokemon by name',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
