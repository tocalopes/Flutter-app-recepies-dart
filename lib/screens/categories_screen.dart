import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vamos Cozinhar?'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(category);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //Sliver = área que tem scroll
          //Cross axis extendido para moontar o grid
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
