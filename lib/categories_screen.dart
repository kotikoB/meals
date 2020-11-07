import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';

import './category_item.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delimeal'),
      ),
      body: GridView(
          padding: const EdgeInsets.all(20),
          children: DUMMY_CATEGORIES.map((category) {
            return CategoryItem(category.id, category.title, category.color);
          }).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20)),
    );
  }
}
