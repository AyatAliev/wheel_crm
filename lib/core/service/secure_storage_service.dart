import 'dart:convert' as convert;

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/auth_info.dart';

@singleton
class SecureStorageService {
  static const _ssKey = 'SS_KEY';

  final FlutterSecureStorage _secureStorage;

  const SecureStorageService(this._secureStorage);

  Future<AuthData?> getUser() async {
    final value = await _secureStorage.read(key: _ssKey);

    if (value == null || value.isEmpty) return null;

    return AuthData.fromJson(convert.jsonDecode(value));
  }

  Future<void> setUser(AuthData user) async {
    await _secureStorage.write(key: _ssKey, value: convert.jsonEncode(user.toJson()));
  }

  Future<void> wipeStorage() async {
    await _secureStorage.deleteAll();
  }
}
