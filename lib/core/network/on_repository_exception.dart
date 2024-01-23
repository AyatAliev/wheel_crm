import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';

Left<Failure, T> onRepositoryException<T>(dynamic exception) {
  late final Failure failure;

  if (exception is DioException) {
    if (exception.type == DioExceptionType.connectionTimeout ||
        exception.type == DioExceptionType.receiveTimeout ||
        exception.type == DioExceptionType.sendTimeout) {
      failure = ConnectionFailure(message: exception.type.toString());
    } else {
      if (exception.response?.statusCode == 401) {
        failure = Authorization(message: 'Token invalidate');
      } else {
        if (exception.response != null && exception.response?.data['msg'].toString() != null) {
          failure = OtherFailure(message: exception.response?.data['msg']);
        } else {
          failure = OtherFailure(message: exception.message);
        }
      }
    }
  } else {
    failure = OtherFailure(message: exception.toString());
  }

  return Left(failure);
}
