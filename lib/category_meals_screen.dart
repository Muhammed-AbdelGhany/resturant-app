import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String catTitile;
  final String id;
  CategoryMealsScreen(
    this.id,
    this.catTitile,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitile),
      ),
      body: Center(
        child: Text('ss'),
      ),
    );
  }
}
