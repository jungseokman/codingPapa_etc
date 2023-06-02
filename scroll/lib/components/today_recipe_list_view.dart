import 'package:flutter/material.dart';

import '../models/models.dart';
import 'components.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({Key? key, required this.recipe}) : super(key: key);

  final List<ExploreRecipe> recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Recipe of the Day 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        SizedBox(
          height: 400,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _buildCard(recipe[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: recipe.length),
        ),
      ],
    );
  }

  Widget _buildCard(ExploreRecipe exploreRecipe) {
    if (exploreRecipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: exploreRecipe);
    } else if (exploreRecipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: exploreRecipe);
    } else if (exploreRecipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: exploreRecipe);
    } else {
      throw Exception('카드가 존재하지 않습니다.');
    }
  }
}
