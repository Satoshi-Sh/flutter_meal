import 'package:flutter/material.dart';
import 'package:flutter_meal/data/dummy_data.dart';
import 'package:flutter_meal/screens/meals.dart';
import 'package:flutter_meal/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: 'Some title', meals: []),
      ),
    ); // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick your category')),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category) => CategoryGridItem(category: category))
          for (final category in availableCategories)
            CategoryGridItem(
              onSelectCategory: (){_selectCategory(context)},
              category: category,
            ),
        ],
      ),
    );
  }
}
