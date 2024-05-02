import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/auth_info.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/features/auth/data/data_sources/auth_data_source.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  final HttpClient _client;

  AuthDataSourceImpl(this._client);

  @override
  Future<AuthData> authorization({
    required String email,
    required String password,
  }) async {
    final result = await _client.post(
      HttpPaths.authorization,
      data: {
        "email": email,
        "password": password,
      },
    );

    return AuthData.fromJson(result.data);
  }

  @override
  Future<String> changePassword({required String newPassword, required String confirmPassword}) async {
    final result = await _client.post(
      HttpPaths.changePassword,
      data: {
        "new_password": newPassword,
        "new_password_confirm": confirmPassword,
      },
    );

    return result.data['msg'];
  }
}
