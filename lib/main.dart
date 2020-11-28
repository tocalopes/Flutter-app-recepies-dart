import 'package:flutter/material.dart';
import 'package:recepies_foods/models/settings.dart';
import 'package:recepies_foods/screens/categories_meals_screen.dart';
import 'package:recepies_foods/screens/meal_datails_screen.dart';
import 'package:recepies_foods/screens/settings_screen.dart';
import 'package:recepies_foods/utils/app-routes.dart';
import 'screens/categories_screen.dart';
import 'screens/tabs_screen.dart';
import 'models/Meal.dart';
import 'data/dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Meal> _availableMeals = DUMMY_MEALS;
  Settings settings = Settings();

  void _filterMeals (Settings settings){
    setState(() {
      this.settings = settings;
      _availableMeals =DUMMY_MEALS.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
        
        return !filterGluten && !filterLactose && !filterVegan && !filterVegetarian;
      }).toList();
    });
  }

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
        AppRoutes.HOME: (context) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAILS: (context) => MealDetailsScreen(),
        AppRoutes.SETTINGS: (context) => SettingsScreen(settings,_filterMeals),
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
