import 'package:equatable/equatable.dart';

class Verification extends Equatable {
  final bool success;
  final String message;
  final String? data;

  Verification(this.success, this.message, this.data);

  @override
  List<Object?> get props => [success, message, data];
}
