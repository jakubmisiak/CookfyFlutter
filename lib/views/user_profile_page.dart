import 'package:cookfy_flutter/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:cookfy_flutter/model/User.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});
  

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  List<User> user = getUser();
  List<Recipe> recipesFuture = getRecipes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding : const EdgeInsets.all(10),
        child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Center(child : buildImage(user[0])),
          SizedBox(height: 10),
          Center(child : Text(user[0].Username)),
          SizedBox(height: 10),
          Center(child : Text(user[0].Description*32)),
          SizedBox(height: 10),
          Expanded(child: recipesFuture.isNotEmpty ? buildRecipe(recipesFuture) : Text("No results found"))
        ],
      )
      )
    );
  }

Widget buildImage(User user)
{
  String value;

  if(user.Photo!.isEmpty) {
    value = "default";
  }
  else{
    value = user.Photo!;
  }
  final image = NetworkImage(value);

  return Ink.image(image: image,
  fit: BoxFit.cover,
  width: 128,
  height: 128,);
}

static List<User> getUser(){ 
   const myUser = [{
    "id" : 1,
    "name" : "Test",
    "photo" : "https://cdn.landesa.org/wp-content/uploads/default-user-image.png",
    "description" : "Test"
  }];
  return myUser.map<User>(User.fromJson).toList();
  }
Widget buildRecipe(List<Recipe> recipes) => ListView.builder(
    shrinkWrap: true,
    physics: ClampingScrollPhysics(),
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