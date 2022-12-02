class Recipe {
    final int Id;
    final String Title;
    final String Photo;
    final String Ingredient;
    final String Description;

  const Recipe({
    required this.Id,
    required this.Title,
    required this.Photo,
    required this.Ingredient,
    required this.Description,
  });

  static Recipe fromJson(json) => Recipe(Id: json['id'], Title: json['title'], Photo: json['photo'], Ingredient: json['ingredient'], Description: json['description']);
}