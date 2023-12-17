class ArtikelHapus {
  final int id;
  final String title;
  final String thumbnail;
  final String slug;
  final String status;
  final Map<String, dynamic> author;
  final String publishedAt;

  ArtikelHapus({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.slug,
    required this.status,
    required this.author,
    required this.publishedAt,
  });

  factory ArtikelHapus.fromJson(Map<String, dynamic> json) {
    return ArtikelHapus(
      id: json['id'],
      title: json['title'],
      thumbnail: json['thumbnail'],
      slug: json['slug'],
      status: json['status'],
      author: json['author'],
      publishedAt: json['published_at'],
    );
  }
}
