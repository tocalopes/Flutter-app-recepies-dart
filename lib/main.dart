import 'package:flutter/material.dart';
import 'package:recepies_foods/screens/categories_meals_screen.dart';
import 'package:recepies_foods/screens/meal_datails_screen.dart';
import 'package:recepies_foods/utils/app-routes.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1), //backgorund color
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      //initialRoute: ,
      routes: {
        AppRoutes.HOME: (context) => CategoriesScreens(),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAILS: (context) => MealDetailsScreen(),
      },
      //entra nesse metódo somen se a rota não existe em ROUTES
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/alguma-coisa') {
      //     return null;
      //   } else if (settings.name == '/outra-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) {
      //       return CategoriesScreen();
      //     });
      //   }
      // },
      onUnknownRoute: (settings) {
       return MaterialPageRoute(builder: (_) {
         return MealDetailsScreen();
       });
      },
    );
  }
}
