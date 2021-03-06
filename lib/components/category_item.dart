import 'package:flutter/material.dart';
import 'package:recepies_foods/models/category.dart';
import 'package:recepies_foods/utils/app-routes.dart';
import '../screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    final containerRadius = BorderRadius.circular(15);
    return InkWell(
      borderRadius: containerRadius,
      splashColor: Theme.of(context).primaryColor,
      onTap: () {
        _selectCategory(context);
      },
      child: Container(
        child:
            Text(category.title, style: Theme.of(context).textTheme.headline6),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: containerRadius,
          gradient: LinearGradient(
              colors: [category.color.withOpacity(0.5), category.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
      ),
    );
  }
}
