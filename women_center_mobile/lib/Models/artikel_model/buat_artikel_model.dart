class Article {
  String title;
  String photoUrl;
  String content;

  Article({
    required this.title,
    required this.photoUrl,
    required this.content,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'photoUrl': photoUrl,
      'content': content,
    };
  }
}
