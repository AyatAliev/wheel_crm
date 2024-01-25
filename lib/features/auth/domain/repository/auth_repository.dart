import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/entity/success.dart';

abstract class AuthRepository {
  Future<Either<Failure, Success>> authorization({
    required String email,
    required String password,
  });
}
