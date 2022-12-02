import 'package:cookfy_flutter/model/Recipe.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final Recipe recipe;
  const PostPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Center(child : Text(recipe.Title)),
          SizedBox(height: 10),
          Center(child : Text(recipe.Description)),

        ],
      )
    )
  );
  }
}