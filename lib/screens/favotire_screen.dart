import 'package:flutter/material.dart';
import 'package:recepies_foods/components/meal_item.dart';
import 'package:recepies_foods/models/Meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return favoriteMeals.isEmpty
        ? Center(
            child: Text('Nenhuma comida favorita!'),
          )
        : ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (context, index) {
              return MealItem(favoriteMeals[index]);
            },
          );
  }
}
