
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wheel_crm/core/service/auth_service.dart';

@singleton
class LocalStorageService {
  final SharedPreferences _sharedPreferences;
  final AuthService _authService;

  LocalStorageService(this._sharedPreferences, this._authService);

  bool _isInitialized = false;

  Future<void> initializeLocalStorage() async {
    if (_isInitialized) return;

    _isInitialized = true;
  }
}
