import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_meal/data/dummy_data.dart';

final mealsProvider = StateProvider((ref) {
  return dummyMeals;
});
