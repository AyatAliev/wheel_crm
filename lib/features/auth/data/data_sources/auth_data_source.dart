import 'package:wheel_crm/core/network/entity/auth_info.dart';

abstract class AuthDataSource {
  Future<AuthData> authorization({
    required String email,
    required String password,
  });

  Future<String> changePassword({
    required String newPassword,
    required String confirmPassword,
  });
}