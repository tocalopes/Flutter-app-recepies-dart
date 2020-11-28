import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Vamos cozinhar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreens(),
    );
  }
}

