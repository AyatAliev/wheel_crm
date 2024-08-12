// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i229;

import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:wheel_crm/core/app/router/app_routes.dart' as _i510;
import 'package:wheel_crm/core/network/http_client.dart' as _i765;
import 'package:wheel_crm/core/service/auth_service.dart' as _i144;
import 'package:wheel_crm/core/service/local_storage_service.dart' as _i193;
import 'package:wheel_crm/core/service/secure_storage_service.dart' as _i262;
import 'package:wheel_crm/features/acceptance/data/data_sources/acceptance_data_source.dart'
    as _i465;
import 'package:wheel_crm/features/acceptance/data/data_sources/impl/acceptance_data_source_impl.dart'
    as _i809;
import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart'
    as _i849;
import 'package:wheel_crm/features/acceptance/data/model/convert/acceptance_model_to_entity.dart'
    as _i115;
import 'package:wheel_crm/features/acceptance/data/repository/acceptance_repository_impl.dart'
    as _i1061;
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart'
    as _i511;
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart'
    as _i1012;
import 'package:wheel_crm/features/acceptance/domain/repository/acceptance_repository.dart'
    as _i793;
import 'package:wheel_crm/features/auth/data/data_sources/auth_data_source.dart'
    as _i295;
import 'package:wheel_crm/features/auth/data/data_sources/impl/auth_data_source_impl.dart'
    as _i471;
import 'package:wheel_crm/features/auth/data/repository/auth_repository_impl.dart'
    as _i31;
import 'package:wheel_crm/features/auth/domain/bloc/auth_bloc.dart' as _i825;
import 'package:wheel_crm/features/auth/domain/repository/auth_repository.dart'
    as _i762;
import 'package:wheel_crm/features/profile/data/data_sources/impl/profile_data_sources_impl.dart'
    as _i927;
import 'package:wheel_crm/features/profile/data/data_sources/profile_data_source.dart'
    as _i536;
import 'package:wheel_crm/features/profile/data/model/convert/function_model_to_entity.dart'
    as _i1044;
import 'package:wheel_crm/features/profile/data/model/convert/profile_model_to_entity.dart'
    as _i716;
import 'package:wheel_crm/features/profile/data/model/profile_model.dart'
    as _i349;
import 'package:wheel_crm/features/profile/data/repository/profile_repository_impl.dart'
    as _i72;
import 'package:wheel_crm/features/profile/domain/bloc/profile_bloc.dart'
    as _i842;
import 'package:wheel_crm/features/profile/domain/entity/profile_entity.dart'
    as _i891;
import 'package:wheel_crm/features/profile/domain/repository/profile_repository.dart'
    as _i116;
import 'package:wheel_crm/features/storage/data/data_sources/impl/storage_data_source_impl.dart'
    as _i1000;
import 'package:wheel_crm/features/storage/data/data_sources/storage_data_source.dart'
    as _i909;
import 'package:wheel_crm/features/storage/data/model/convert/storage_model_to_entity.dart'
    as _i654;
import 'package:wheel_crm/features/storage/data/model/storage_model.dart'
    as _i932;
import 'package:wheel_crm/features/storage/data/repository/storage_repository_impl.dart'
    as _i45;
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart'
    as _i716;
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart'
    as _i1014;
import 'package:wheel_crm/features/storage/domain/repository/storage_repository.dart'
    as _i21;
import 'package:wheel_crm/features/wheel/data/data_soruces/impl/wheel_data_source_impl.dart'
    as _i680;
import 'package:wheel_crm/features/wheel/data/data_soruces/wheel_data_source.dart'
    as _i597;
import 'package:wheel_crm/features/wheel/data/model/convert/sales_detail_model_to_entity.dart'
    as _i888;
import 'package:wheel_crm/features/wheel/data/model/convert/sales_model_to_entity.dart'
    as _i749;
import 'package:wheel_crm/features/wheel/data/model/convert/wheel_model_to_entity.dart'
    as _i222;
import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart'
    as _i307;
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart' as _i179;
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart' as _i397;
import 'package:wheel_crm/features/wheel/data/repository/wheel_repository_impl.dart'
    as _i729;
import 'package:wheel_crm/features/wheel/domain/bloc/wheel_bloc.dart' as _i263;
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart'
    as _i660;
import 'package:wheel_crm/features/wheel/domain/entity/sales_entity.dart'
    as _i389;
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart'
    as _i912;
import 'package:wheel_crm/features/wheel/domain/repository/wheel_repository.dart'
    as _i1046;
import 'package:wheel_crm/injection/injection_module.dart' as _i825;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i144.AuthService>(() => _i144.AuthService());
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i558.FlutterSecureStorage>(() => registerModule.storage);
    gh.factory<_i229.Converter<_i349.FunctionsModel, _i891.FunctionsEntity>>(
        () => _i1044.CalendarRoomModelToEntity());
    gh.factory<_i229.Converter<_i849.AcceptanceModel, _i1012.AcceptanceEntity>>(
        () => _i115.CalendarRoomModelToEntity());
    gh.factory<_i229.Converter<_i179.SalesModel, _i389.SalesEntity>>(
        () => _i749.SalesModelToEntity());
    gh.factory<_i229.Converter<_i349.ProfileModel, _i891.ProfileEntity>>(
        () => _i716.ProfileModelToEntity());
    gh.factory<_i229.Converter<_i397.WheelModel, _i912.WheelEntity>>(
        () => _i222.WheelModelToEntity());
    gh.singleton<_i765.HttpClient>(() => _i765.HttpClient(gh<_i361.Dio>()));
    gh.singleton<_i262.SecureStorageService>(
        () => _i262.SecureStorageService(gh<_i558.FlutterSecureStorage>()));
    gh.factory<_i597.WheelDataSource>(
        () => _i680.WheelDataSourceImpl(gh<_i765.HttpClient>()));
    gh.factory<_i229.Converter<_i932.StorageModel, _i1014.StorageEntity>>(
        () => _i654.StorageModelToEntity());
    gh.factory<
            _i229.Converter<_i307.SalesDetailModel, _i660.SalesDetailEntity>>(
        () => _i888.SalesDetailModelToEntity());
    gh.factory<_i465.AcceptanceDataSource>(
        () => _i809.AcceptanceDataSourceImpl(gh<_i765.HttpClient>()));
    gh.factory<_i1046.WheelRepository>(() => _i729.WheelRepositoryImpl(
          gh<_i597.WheelDataSource>(),
          gh<
              _i229
              .Converter<_i307.SalesDetailModel, _i660.SalesDetailEntity>>(),
          gh<_i229.Converter<_i179.SalesModel, _i389.SalesEntity>>(),
        ));
    gh.singleton<_i193.LocalStorageService>(() => _i193.LocalStorageService(
          gh<_i460.SharedPreferences>(),
          gh<_i144.AuthService>(),
        ));
    gh.factory<_i793.AcceptanceRepository>(() =>
        _i1061.AcceptanceRepositoryImpl(
          gh<_i465.AcceptanceDataSource>(),
          gh<_i229.Converter<_i849.AcceptanceModel, _i1012.AcceptanceEntity>>(),
        ));
    gh.singleton<_i510.AppRouter>(
        () => _i510.AppRouter(gh<_i144.AuthService>()));
    gh.factory<_i263.WheelBloc>(
        () => _i263.WheelBloc(gh<_i1046.WheelRepository>()));
    gh.factory<_i536.ProfileDataSource>(
        () => _i927.ProfileDataSourceImpl(client: gh<_i765.HttpClient>()));
    gh.factory<_i295.AuthDataSource>(
        () => _i471.AuthDataSourceImpl(gh<_i765.HttpClient>()));
    gh.factory<_i909.StorageDataSource>(
        () => _i1000.StorageDataSourceImpl(gh<_i765.HttpClient>()));
    gh.factory<_i511.AcceptanceBloc>(
        () => _i511.AcceptanceBloc(gh<_i793.AcceptanceRepository>()));
    gh.factory<_i762.AuthRepository>(() => _i31.AuthRepositoryImpl(
          gh<_i295.AuthDataSource>(),
          gh<_i144.AuthService>(),
        ));
    gh.factory<_i825.AuthBloc>(
        () => _i825.AuthBloc(gh<_i762.AuthRepository>()));
    gh.factory<_i116.ProfileRepository>(() => _i72.ProfileRepositoryImpl(
          dataSource: gh<_i536.ProfileDataSource>(),
          converter:
              gh<_i229.Converter<_i349.ProfileModel, _i891.ProfileEntity>>(),
        ));
    gh.factory<_i21.StorageRepository>(() => _i45.StorageRepositoryImpl(
          gh<_i909.StorageDataSource>(),
          gh<_i229.Converter<_i932.StorageModel, _i1014.StorageEntity>>(),
          gh<_i229.Converter<_i397.WheelModel, _i912.WheelEntity>>(),
        ));
    gh.factory<_i842.ProfileBloc>(
        () => _i842.ProfileBloc(gh<_i116.ProfileRepository>()));
    gh.factory<_i716.StorageBloc>(
        () => _i716.StorageBloc(gh<_i21.StorageRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i825.RegisterModule {}
