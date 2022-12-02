import 'package:cookfy_flutter/model/Recipe.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Recipe> recipesFuture = getRecipes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Cook", style: TextStyle(fontSize: 22)),
          Text("Fy", style: TextStyle(fontSize: 22, color: Colors.green)),
          
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
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