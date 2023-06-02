import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../network/recipe_model.dart';
import '../widgets/custom_dropdown.dart';
// TODO: Add imports

class RecipeList extends StatefulWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  State createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  // TODO: Add key
  static const String prefSearchKey = 'PREVIOUS_SEARCH';
  late TextEditingController searchTextController;
  final ScrollController _scrollController = ScrollController();
  List currentSearchList = [];
  int currentCount = 0;
  int currentStartPosition = 0;
  int currentEndPosition = 20;
  int pageCount = 20;
  bool hasMore = false;
  bool loading = false;
  bool inErrorState = false;
  // TODO: Add searches array
  List<String> previousSearchs = [];
  // TODO: Add _currentRecipes1
  APIRecipeResponse? apiRecipeResponse;

  @override
  void initState() {
    super.initState();
    // TODO: Call loadRecipes()
    getRecipeModel();

    // TODO: Call getPreviousSearches
    getPreviousSearches();
    searchTextController = TextEditingController(text: '');
    _scrollController.addListener(() {
      final triggerFetchMoreSize =
          0.7 * _scrollController.position.maxScrollExtent;

      if (_scrollController.position.pixels > triggerFetchMoreSize) {
        if (hasMore &&
            currentEndPosition < currentCount &&
            !loading &&
            !inErrorState) {
          setState(() {
            loading = true;
            currentStartPosition = currentEndPosition;
            currentEndPosition =
                min(currentStartPosition + pageCount, currentCount);
          });
        }
      }
    });
  }

  // TODO: Add loadRecipes
  void getRecipeModel() async {
    final jsonString = await rootBundle.loadString('assets/recipes1.json');
    final json = jsonDecode(jsonString);

    final apiRecipe = APIRecipeResponse.fromJson(json);
    print(apiRecipe);
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  // TODO: Add savePreviousSearches
  void savePreviousSearches() async {
    final pref = await SharedPreferences.getInstance();
    pref.setStringList(prefSearchKey, previousSearchs);
  }

  // TODO: Add getPreviousSearches
  void getPreviousSearches() async {
    final pref = await SharedPreferences.getInstance();
    final searchs = pref.getStringList(prefSearchKey);

    previousSearchs = searchs ?? <String>[];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            _buildSearchCard(),
            _buildRecipeLoader(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchCard() {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            // Replace
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                startSearch(searchTextController.text);
                final currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
            ),
            const SizedBox(
              width: 6.0,
            ),
            // *** Start Replace
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Search'),
                      autofocus: false,
                      controller: searchTextController,
                      onSubmitted: (value) {
                        startSearch(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            // *** End Replace
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return previousSearchs.map<CustomDropdownMenuItem<String>>(
                  (String value) {
                    return CustomDropdownMenuItem<String>(
                      value: value,
                      text: value,
                      callback: () {
                        setState(() {
                          previousSearchs.remove(value);
                          savePreviousSearches();
                          Navigator.pop(context);
                        });
                      },
                    );
                  },
                ).toList();
              },
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.lightGreen,
              ),
              onSelected: (String value) {
                searchTextController.text = value;
                startSearch(searchTextController.text);
              },
            )
          ],
        ),
      ),
    );
  }

  // TODO: Add startSearch
  void startSearch(String value) {
    setState(() {
      currentSearchList.clear();
      currentCount = 0;
      currentEndPosition = pageCount;
      hasMore = true;
      value = value.trim();

      if (!currentSearchList.contains(value)) {
        previousSearchs.add(value);
        savePreviousSearches();
      }
    });
  }

  // TODO: Replace method
  Widget _buildRecipeLoader(BuildContext context) {
    if (searchTextController.text.length < 3) {
      return Container();
    }
    // Show a loading indicator while waiting for the movies
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  // TODO: Add _buildRecipeCard
}
