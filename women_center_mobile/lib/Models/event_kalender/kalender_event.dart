class Event {
  final int id;
  final String title;
  final String date;
  final String timeStart;
  final String timeFinish;
  final String eventUrl;
  final String locations;

  Event(
      {required this.id,
      required this.title,
      required this.date,
      required this.timeStart,
      required this.timeFinish,
      required this.eventUrl,
      required this.locations});
}

class CounselingPackage {
  final int id;
  final String title;
  // final String thumbnail;
  final int sessionPerWeek;
  final String price;
  final String description;

  CounselingPackage({
    required this.id,
    required this.title,
    // required this.thumbnail,
    required this.sessionPerWeek,
    required this.price,
    required this.description,
  });

  factory CounselingPackage.fromJson(Map<String, dynamic> json) {
    return CounselingPackage(
      id: json['id'],
      title: json['title'],
      // thumbnail: json['thumbnail'],
      sessionPerWeek: json['session_per_week'],
      price: json['price'],
      description: json['description'],
    );
  }
}
