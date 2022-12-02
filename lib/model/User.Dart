class User {
    final int Id;
    final String Username;
    final String Photo;
    final String Description;

  const User({
    required this.Id,
    required this.Username,
    required this.Photo,
    required this.Description,
  });

  static User fromJson(json) => User(Id: json['id'], Username: json['name'], Photo: json['photo'], Description: json['description']);
}