import 'package:flutter/material.dart';
import 'package:flutter_meal/models/meal.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Text('Hello for now..'),
    );
  }
}
