import 'package:flutter/material.dart';
import 'package:flutter_meal/models/meal.dart';
import 'package:flutter_meal/widgets/meal_item.dart';
import 'package:flutter_meal/screens/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, this.title, required this.meals});

  void _selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealScreen(
          meal: meal,
        ),
      ),
    ); // Navigator.push(context, route)
  }

  final String? title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final Widget listContent = meals.isEmpty
        ? Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Uh oh ... nothing here!',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Try selecting a different category!',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          )
        : ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) => MealItem(
              meal: meals[index],
              onSelectMeal: (meal) {
                _selectMeal(context, meal);
              },
            ),
          );
    if (title == null) {
      return listContent;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: listContent,
    );
  }
}
