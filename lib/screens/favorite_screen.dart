import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class FavoriteScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Minhas Refeições Favoritas'),
    );
  }
}