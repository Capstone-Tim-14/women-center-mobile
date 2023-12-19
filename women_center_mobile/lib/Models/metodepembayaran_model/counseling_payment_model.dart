class CounselingSessionModel {
  final String orderId;
  final String fulltime;
  final String email;
  final List<Schedule> schedules;

  CounselingSessionModel({
    required this.orderId,
    required this.fulltime,
    required this.email,
    required this.schedules,
  });

  factory CounselingSessionModel.fromJson(Map<String, dynamic> json) {
    return CounselingSessionModel(
      orderId: json['order_id'],
      fulltime: json['fulltime'],
      email: json['email'],
      schedules: List<Schedule>.from(
        json['schedules'].map((schedule) => Schedule.fromJson(schedule)),
      ),
    );
  }
}

class Schedule {
  final String dateSchedule;
  final String timeStart;
  final String timeFinish;

  Schedule({
    required this.dateSchedule,
    required this.timeStart,
    required this.timeFinish,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      dateSchedule: json['date_schedule'],
      timeStart: json['time_start'],
      timeFinish: json['time_finish'],
    );
  }
}