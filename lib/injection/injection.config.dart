// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i4;

import 'package:dio/dio.dart' as _i14;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;
import 'package:wheel_crm/core/app/router/app_routes.dart' as _i23;
import 'package:wheel_crm/core/network/http_client.dart' as _i16;
import 'package:wheel_crm/core/service/auth_service.dart' as _i3;
import 'package:wheel_crm/core/service/local_storage_service.dart' as _i28;
import 'package:wheel_crm/core/service/secure_storage_service.dart' as _i17;
import 'package:wheel_crm/features/acceptance/data/data_sources/acceptance_data_source.dart'
    as _i19;
import 'package:wheel_crm/features/acceptance/data/data_sources/impl/acceptance_data_source_impl.dart'
    as _i20;
import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart'
    as _i11;
import 'package:wheel_crm/features/acceptance/data/model/convert/acceptance_model_to_entity.dart'
    as _i13;
import 'package:wheel_crm/features/acceptance/data/repositories/acceptance_repository_impl.dart'
    as _i22;
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart'
    as _i29;
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart'
    as _i12;
import 'package:wheel_crm/features/acceptance/domain/repository/acceptance_repository.dart'
    as _i21;
import 'package:wheel_crm/features/auth/data/data_sources/auth_data_source.dart'
    as _i24;
import 'package:wheel_crm/features/auth/data/data_sources/impl/auth_data_source_impl.dart'
    as _i25;
import 'package:wheel_crm/features/auth/data/repository/auth_repository_impl.dart'
    as _i27;
import 'package:wheel_crm/features/auth/domain/bloc/auth_bloc.dart' as _i30;
import 'package:wheel_crm/features/auth/domain/repository/auth_repository.dart'
    as _i26;
import 'package:wheel_crm/features/storage/data/model/convert/storage_model_to_entity.dart'
    as _i10;
import 'package:wheel_crm/features/storage/data/model/storage_model.dart'
    as _i8;
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart'
    as _i9;
import 'package:wheel_crm/features/wheel/data/model/convert/wheel_model_to_entity.dart'
    as _i7;
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart' as _i5;
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart'
    as _i6;
import 'package:wheel_crm/injection/injection_module.dart' as _i31;

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
    gh.factory<_i4.Converter<_i5.WheelModel, _i6.WheelEntity>>(
        () => _i7.WheelModelToEntity());
    gh.factory<_i4.Converter<_i8.StorageModel, _i9.StorageEntity>>(
        () => _i10.StorageModelToEntity());
    gh.factory<_i4.Converter<_i11.AcceptanceModel, _i12.AcceptanceEntity>>(
        () => _i13.CalendarRoomModelToEntity());
    gh.factory<_i14.Dio>(() => registerModule.dio);
    gh.singleton<_i15.FlutterSecureStorage>(registerModule.storage);
    gh.singleton<_i16.HttpClient>(_i16.HttpClient(gh<_i14.Dio>()));
    gh.singleton<_i17.SecureStorageService>(
        _i17.SecureStorageService(gh<_i15.FlutterSecureStorage>()));
    await gh.singletonAsync<_i18.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i19.AcceptanceDataSource>(
        () => _i20.AcceptanceDataSourceImpl(gh<_i16.HttpClient>()));
    gh.factory<_i21.AcceptanceRepository>(() => _i22.AcceptanceRepositoryImpl(
          gh<_i19.AcceptanceDataSource>(),
          gh<_i4.Converter<_i11.AcceptanceModel, _i12.AcceptanceEntity>>(),
        ));
    gh.singleton<_i23.AppRouter>(_i23.AppRouter(gh<_i3.AuthService>()));
    gh.factory<_i24.AuthDataSource>(
        () => _i25.AuthDataSourceImpl(gh<_i16.HttpClient>()));
    gh.factory<_i26.AuthRepository>(() => _i27.AuthRepositoryImpl(
          gh<_i24.AuthDataSource>(),
          gh<_i3.AuthService>(),
        ));
    gh.singleton<_i28.LocalStorageService>(_i28.LocalStorageService(
      gh<_i18.SharedPreferences>(),
      gh<_i3.AuthService>(),
    ));
    gh.factory<_i29.AcceptanceBloc>(
        () => _i29.AcceptanceBloc(gh<_i21.AcceptanceRepository>()));
    gh.factory<_i30.AuthBloc>(() => _i30.AuthBloc(gh<_i26.AuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i31.RegisterModule {}
