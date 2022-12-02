import 'package:cookfy_flutter/model/Recipe.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? value;
  List<Recipe> recipesFuture = getRecipes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(decoration: const InputDecoration(
              labelText: "Search", suffixIcon: Icon(Icons.search)
            )),
            SizedBox(height: 10),
            Expanded(child: recipesFuture.isNotEmpty ? buildRecipe(recipesFuture) : Text("No results found"))
          ],
        ),
      )
    );
  }

  Widget buildRecipe(List<Recipe> recipes) => ListView.builder(
    shrinkWrap: true,
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
      },      {
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
      },      {
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