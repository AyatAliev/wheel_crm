import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  factory Failure.request({
    int? status,
    String? message,
  }) = RequestFailure;
  factory Failure.connection({String? message}) = ConnectionFailure;
  factory Failure.database({String? message}) = DatabaseFailure;
  factory Failure.other({String? message}) = OtherFailure;
  factory Failure.authorization({String? message}) = Authorization;
}
