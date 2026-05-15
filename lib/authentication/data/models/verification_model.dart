import 'package:pastport/authentication/domain/entities/verification.dart';

class VerificationModel extends Verification
{
  VerificationModel(
      super.success,
      super.message,
      super.data,
      );

  factory VerificationModel.fromJson(Map<String, dynamic> json)
  {
    return VerificationModel(
      json['success'],
      json['message'],
      json['data'],
    );

  }
}