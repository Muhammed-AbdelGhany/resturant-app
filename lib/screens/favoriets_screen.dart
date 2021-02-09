import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import '../widgets/meal_item.dart';

class FavorietsScreen extends StatelessWidget {
  final List<Meal> favMeals;
  FavorietsScreen(this.favMeals);
  @override
  Widget build(BuildContext context) {
    if (favMeals.isEmpty) {
      return Center(child: Text('sas'));
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favMeals[index].id,
            title: favMeals[index].title,
            imageUrl: favMeals[index].imageUrl,
            duration: favMeals[index].duration,
            compelxity: favMeals[index].complexity,
            affordability: favMeals[index].affordability,
          );
        },
        itemCount: favMeals.length,
      );
    }
  }
}
