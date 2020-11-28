import 'package:flutter/material.dart';
import 'package:recepies_foods/models/category.dart';

class CategoryItem extends StatelessWidget {
  
  final Category category;

  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),    
    );
  }
}