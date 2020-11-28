import 'package:flutter/material.dart';

class CategoriesScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //Sliver = área que tem scroll
        //Cross axis extendido para moontar o grid
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}