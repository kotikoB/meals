import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  //this static property can be accessed without instantiating this class
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArguments['title'];
    final categoryId = routeArguments['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Text('The recipes'),
      ),
    );
  }
}
