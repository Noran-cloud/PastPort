class VerificationModel {
  bool? success;
  String? message;
  Data? data;

  VerificationModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  String? code;

  Data.fromJson(Map<String, dynamic> json) {
    code = json['code'];
  }
}