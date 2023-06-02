import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/models.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ExploreData>(
        future: mockService.getExploreData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final todayRecipe = snapshot.data?.todayRecipes ?? [];
              final friendPost = snapshot.data?.friendPosts ?? [];

              return Center(
                child: ListView(
                  children: [
                    TodayRecipeListView(
                      recipe: todayRecipe,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    FriendPostListView(
                      posts: friendPost,
                    ),
                  ],
                ),
              );
            }
            return Center(child: Text('no Data'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
