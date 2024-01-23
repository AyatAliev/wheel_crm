// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;
import 'package:wheel_crm/core/app/router/app_routes.dart' as _i3;
import 'package:wheel_crm/core/network/http_client.dart' as _i7;
import 'package:wheel_crm/core/service/auth_service.dart' as _i4;
import 'package:wheel_crm/core/service/local_storage_service.dart' as _i10;
import 'package:wheel_crm/core/service/secure_storage_service.dart' as _i8;
import 'package:wheel_crm/injection/injection_module.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.singleton<_i4.AuthService>(_i4.AuthService());
    gh.factory<_i5.Dio>(() => registerModule.dio);
    gh.singleton<_i6.FlutterSecureStorage>(registerModule.storage);
    gh.singleton<_i7.HttpClient>(_i7.HttpClient(gh<_i5.Dio>()));
    gh.singleton<_i8.SecureStorageService>(
        _i8.SecureStorageService(gh<_i6.FlutterSecureStorage>()));
    await gh.singletonAsync<_i9.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i10.LocalStorageService>(_i10.LocalStorageService(
      gh<_i9.SharedPreferences>(),
      gh<_i4.AuthService>(),
    ));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
