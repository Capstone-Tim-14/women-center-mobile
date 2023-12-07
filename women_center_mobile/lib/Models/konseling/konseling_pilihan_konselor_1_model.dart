class Counselor {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String profilePicture;
  final String description;
  final String status;

  Counselor({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.profilePicture,
    required this.description,
    required this.status,
  });

  factory Counselor.fromJson(Map<String, dynamic> json) {
    return Counselor(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      profilePicture: json['profile_picture'],
      description: json['description'],
      status: json['status'],
    );
  }
}
