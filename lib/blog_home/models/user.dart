class User {
  final String name;
  final String title;
  final String about;

  User(
    this.name,
    this.title,
    this.about,
  );

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['name'] as String, json['title'] as String,
        json['about'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'title': title,
      'about': about,
    };
  }
}
