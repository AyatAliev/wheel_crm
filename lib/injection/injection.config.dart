// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;
import 'package:wheel_crm/core/app/router/app_routes.dart' as _i9;
import 'package:wheel_crm/core/network/http_client.dart' as _i6;
import 'package:wheel_crm/core/service/auth_service.dart' as _i3;
import 'package:wheel_crm/core/service/local_storage_service.dart' as _i14;
import 'package:wheel_crm/core/service/secure_storage_service.dart' as _i7;
import 'package:wheel_crm/features/auth/data/data_sources/auth_data_source.dart'
    as _i10;
import 'package:wheel_crm/features/auth/data/data_sources/impl/auth_data_source_impl.dart'
    as _i11;
import 'package:wheel_crm/features/auth/data/repository/auth_repository_impl.dart'
    as _i13;
import 'package:wheel_crm/features/auth/domain/bloc/auth_bloc.dart' as _i15;
import 'package:wheel_crm/features/auth/domain/repository/auth_repository.dart'
    as _i12;
import 'package:wheel_crm/injection/injection_module.dart' as _i16;

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
    gh.singleton<_i3.AuthService>(_i3.AuthService());
    gh.factory<_i4.Dio>(() => registerModule.dio);
    gh.singleton<_i5.FlutterSecureStorage>(registerModule.storage);
    gh.singleton<_i6.HttpClient>(_i6.HttpClient(gh<_i4.Dio>()));
    gh.singleton<_i7.SecureStorageService>(
        _i7.SecureStorageService(gh<_i5.FlutterSecureStorage>()));
    await gh.singletonAsync<_i8.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i9.AppRouter>(_i9.AppRouter(gh<_i3.AuthService>()));
    gh.factory<_i10.AuthDataSource>(
        () => _i11.AuthDataSourceImpl(gh<_i6.HttpClient>()));
    gh.factory<_i12.AuthRepository>(() => _i13.AuthRepositoryImpl(
          gh<_i10.AuthDataSource>(),
          gh<_i3.AuthService>(),
        ));
    gh.singleton<_i14.LocalStorageService>(_i14.LocalStorageService(
      gh<_i8.SharedPreferences>(),
      gh<_i3.AuthService>(),
    ));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i12.AuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
