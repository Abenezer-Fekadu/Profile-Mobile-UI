class Article {
  final String title;
  final String detail;
  final String date;

  Article(
    this.title,
    this.detail,
    this.date,
  );

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(json['title'] as String, json['detail'] as String,
        json['date'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'detail': detail,
      'date': date,
    };
  }
}
