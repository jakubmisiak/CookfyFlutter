import 'package:cookfy_flutter/model/Recipe.dart';
import 'package:flutter/material.dart';

class HotPage extends StatefulWidget {
  const HotPage({super.key});

  @override
  State<HotPage> createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> {
  List<Recipe> recipesFuture = getRecipes();
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildRecipe(recipesFuture),
      )
    );
  }

  Widget buildRecipe(List<Recipe> recipes) => ListView.builder(
    itemCount: recipes.length,
    itemBuilder: (context, index){
        final recipe = recipes[index]; 
        return Card(
          child: ListTile(
            title: Text(recipe.Title),
            subtitle: Text(recipe.Id.toString()),
          ),
        );
    });

  static List<Recipe> getRecipes() {
    const data = [
      {
        "id": 1,
        "title": "Test1",
        "photo": "photo",
        "ingredient" : "ingredient",
        "description" : "description"
      },
      {
        "id": 2,
        "title": "Test2",
        "photo": "photo",
        "ingredient" : "ingredient",
        "description" : "description"
      },
            {
        "id": 3,
        "title": "Test3",
        "photo": "photo",
        "ingredient" : "ingredient",
        "description" : "description"
      },
    ];
    return data.map<Recipe>(Recipe.fromJson).toList();
  }
}