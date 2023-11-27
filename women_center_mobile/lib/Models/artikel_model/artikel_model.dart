class ArtikelModel{
  final String title;
  final String thumbnail;
  final String slug;
  final Author author;
  final String status;
  final DateTime publishedAt;
  final String content;

ArtikelModel(this.title, this.thumbnail, this.slug, this.author, this.status, this.publishedAt, this.content);

String formatJam(){
  final jarakWaktu =  DateTime.now().difference(publishedAt);
  return "${jarakWaktu.inHours} jam yang lalu";
}

}

class Author{
  final String name;
  final String role;

  Author(this.name, this.role);
}