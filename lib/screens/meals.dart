import 'package:flutter/material.dart';
import 'package:flutter_meal/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final Widget listContent = meals.isEmpty
        ? const Text('No meal is available..')
        : ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) => Text(meals[index].title),
          );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: listContent,
    );
  }
}
