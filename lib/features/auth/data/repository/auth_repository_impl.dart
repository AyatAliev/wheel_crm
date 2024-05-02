import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/entity/success.dart';
import 'package:wheel_crm/core/network/on_repository_exception.dart';
import 'package:wheel_crm/core/service/auth_service.dart';
import 'package:wheel_crm/features/auth/data/data_sources/auth_data_source.dart';
import 'package:wheel_crm/features/auth/domain/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _dataSource;
  final AuthService _authService;

  AuthRepositoryImpl(this._dataSource, this._authService);

  @override
  Future<Either<Failure, Success>> authorization({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _dataSource.authorization(email: email, password: password);
      _authService.cachedUser = result;

      return Success.right;
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, String>> changePassword({required String newPassword, required String confirmPassword}) async {
    try {
      final result = await _dataSource.changePassword(newPassword: newPassword, confirmPassword: confirmPassword);

      return Right(result);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
