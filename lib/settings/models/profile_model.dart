class UserModel {
  final bool success;
  final UserData data;

  UserModel({
    required this.success,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      success: json['success'],
      data: UserData.fromJson(json['data']),
    );
  }
}

class UserData {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String? phoneNumber;
  final bool isEmailVerified;
  final DateTime createdAt;
  final DateTime lastLoginAt;
  final List<String> roles;

  UserData({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.isEmailVerified,
    required this.createdAt,
    required this.lastLoginAt,
    required this.roles,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      phoneNumber: json['phoneNumber'],
      isEmailVerified: json['isEmailVerified'],
      createdAt: DateTime.parse(json['createdAt']),
      lastLoginAt: DateTime.parse(json['lastLoginAt']),
      roles: List<String>.from(json['roles']),
    );
  }
}