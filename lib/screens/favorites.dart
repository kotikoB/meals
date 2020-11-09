import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Center(
        child: Text('Favorites'),
      ),
    );
  }
}
