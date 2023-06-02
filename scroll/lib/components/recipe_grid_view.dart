import 'package:flutter/material.dart';
import '../models/models.dart';
import 'components.dart';

class RecipeGridView extends StatelessWidget {
  const RecipeGridView({Key? key, required this.recipes}) : super(key: key);

  static const _gridPadding = 24.0;

  final List<SimpleRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: recipes.length,
        padding: const EdgeInsets.all(_gridPadding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: _gridPadding,
          crossAxisSpacing: _gridPadding,
        ),
        itemBuilder: (BuildContext context, int index) {
          return RecipeThumbnail(recipe: recipes[index]);
        });
  }
}
