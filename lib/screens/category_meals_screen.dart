import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_item.dart';

import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  //this static property can be accessed without instantiating this class
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArguments['title'];
    final categoryId = routeArguments['id'];
    final categoryMeals =
        DUMMY_MEALS.where((meal) => meal.categories.contains(categoryId)).toList();

    return ListView.builder(
      itemBuilder: (ctx, index) => MealItem(
        id: categoryMeals[index].id,
        title: categoryMeals[index].title,
        imageUrl: categoryMeals[index].imageUrl,
        affordability: categoryMeals[index].affordability,
        complexity: categoryMeals[index].complexity,
        duration: categoryMeals[index].duration,
      ),
      itemCount: categoryMeals.length,
    );
  }
}
