import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/auth_info.dart';
import 'package:wheel_crm/core/service/secure_storage_service.dart';

import '../../injection/injection.dart';

@singleton
class AuthService {
  AuthData? _cachedUser;
  String? _cachedAppleID;

  AuthData? get cachedUser => _cachedUser;

  String? get cachedAppleID => _cachedAppleID;

  set cachedUser(AuthData? info) {
    _cachedUser = info;
    if (_cachedUser != null) {
      getIt<SecureStorageService>().setUser(_cachedUser!);
    }
  }

  Future<void> recoverUser() async {
    _cachedUser = await getIt<SecureStorageService>().getUser();
  }

  Future<void> signOut() async {
    // Clear secure storage
    await getIt<SecureStorageService>().wipeStorage();

    // Clear local cached user
    _cachedUser = null;
  }
}
