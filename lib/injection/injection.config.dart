// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i4;

import 'package:dio/dio.dart' as _i24;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i32;
import 'package:wheel_crm/core/app/router/app_routes.dart' as _i45;
import 'package:wheel_crm/core/network/http_client.dart' as _i26;
import 'package:wheel_crm/core/service/auth_service.dart' as _i3;
import 'package:wheel_crm/core/service/local_storage_service.dart' as _i50;
import 'package:wheel_crm/core/service/secure_storage_service.dart' as _i31;
import 'package:wheel_crm/features/acceptance/data/data_sources/acceptance_data_source.dart'
    as _i41;
import 'package:wheel_crm/features/acceptance/data/data_sources/impl/acceptance_data_source_impl.dart'
    as _i42;
import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart'
    as _i17;
import 'package:wheel_crm/features/acceptance/data/model/convert/acceptance_model_to_entity.dart'
    as _i19;
import 'package:wheel_crm/features/acceptance/data/repository/acceptance_repository_impl.dart'
    as _i44;
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart'
    as _i54;
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart'
    as _i18;
import 'package:wheel_crm/features/acceptance/domain/repository/acceptance_repository.dart'
    as _i43;
import 'package:wheel_crm/features/auth/data/data_sources/auth_data_source.dart'
    as _i46;
import 'package:wheel_crm/features/auth/data/data_sources/impl/auth_data_source_impl.dart'
    as _i47;
import 'package:wheel_crm/features/auth/data/repository/auth_repository_impl.dart'
    as _i49;
import 'package:wheel_crm/features/auth/domain/bloc/auth_bloc.dart' as _i55;
import 'package:wheel_crm/features/auth/domain/repository/auth_repository.dart'
    as _i48;
import 'package:wheel_crm/features/profile/data/data_sources/impl/profile_data_sources_impl.dart'
    as _i28;
import 'package:wheel_crm/features/profile/data/data_sources/profile_data_source.dart'
    as _i27;
import 'package:wheel_crm/features/profile/data/model/convert/function_model_to_entity.dart'
    as _i23;
import 'package:wheel_crm/features/profile/data/model/convert/profile_model_to_entity.dart'
    as _i22;
import 'package:wheel_crm/features/profile/data/model/profile_model.dart'
    as _i20;
import 'package:wheel_crm/features/profile/data/repository/profile_repository_impl.dart'
    as _i30;
import 'package:wheel_crm/features/profile/domain/bloc/profile_bloc.dart'
    as _i51;
import 'package:wheel_crm/features/profile/domain/entity/profile_entity.dart'
    as _i21;
import 'package:wheel_crm/features/profile/domain/repository/profile_repository.dart'
    as _i29;
import 'package:wheel_crm/features/storage/data/data_sources/impl/storage_data_source_impl.dart'
    as _i34;
import 'package:wheel_crm/features/storage/data/data_sources/storage_data_source.dart'
    as _i33;
import 'package:wheel_crm/features/storage/data/model/convert/storage_model_to_entity.dart'
    as _i16;
import 'package:wheel_crm/features/storage/data/model/storage_model.dart'
    as _i14;
import 'package:wheel_crm/features/storage/data/repository/storage_repository_impl.dart'
    as _i36;
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart'
    as _i52;
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart'
    as _i15;
import 'package:wheel_crm/features/storage/domain/repository/storage_repository.dart'
    as _i35;
import 'package:wheel_crm/features/wheel/data/data_soruces/impl/wheel_data_source_impl.dart'
    as _i38;
import 'package:wheel_crm/features/wheel/data/data_soruces/wheel_data_source.dart'
    as _i37;
import 'package:wheel_crm/features/wheel/data/model/convert/sales_detail_model_to_entity.dart'
    as _i7;
import 'package:wheel_crm/features/wheel/data/model/convert/sales_model_to_entity.dart'
    as _i13;
import 'package:wheel_crm/features/wheel/data/model/convert/wheel_model_to_entity.dart'
    as _i10;
import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart'
    as _i5;
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart' as _i11;
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart' as _i8;
import 'package:wheel_crm/features/wheel/data/repository/wheel_repository_impl.dart'
    as _i40;
import 'package:wheel_crm/features/wheel/domain/bloc/wheel_bloc.dart' as _i53;
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart'
    as _i6;
import 'package:wheel_crm/features/wheel/domain/entity/sales_entity.dart'
    as _i12;
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart'
    as _i9;
import 'package:wheel_crm/features/wheel/domain/repository/wheel_repository.dart'
    as _i39;
import 'package:wheel_crm/injection/injection_module.dart' as _i56;

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
    gh.factory<_i4.Converter<_i5.SalesDetailModel, _i6.SalesDetailEntity>>(
        () => _i7.SalesDetailModelToEntity());
    gh.factory<_i4.Converter<_i8.WheelModel, _i9.WheelEntity>>(
        () => _i10.WheelModelToEntity());
    gh.factory<_i4.Converter<_i11.SalesModel, _i12.SalesEntity>>(
        () => _i13.SalesModelToEntity());
    gh.factory<_i4.Converter<_i14.StorageModel, _i15.StorageEntity>>(
        () => _i16.StorageModelToEntity());
    gh.factory<_i4.Converter<_i17.AcceptanceModel, _i18.AcceptanceEntity>>(
        () => _i19.CalendarRoomModelToEntity());
    gh.factory<_i4.Converter<_i20.ProfileModel, _i21.ProfileEntity>>(
        () => _i22.ProfileModelToEntity());
    gh.factory<_i4.Converter<_i20.FunctionsModel, _i21.FunctionsEntity>>(
        () => _i23.CalendarRoomModelToEntity());
    gh.factory<_i24.Dio>(() => registerModule.dio);
    gh.singleton<_i25.FlutterSecureStorage>(registerModule.storage);
    gh.singleton<_i26.HttpClient>(_i26.HttpClient(gh<_i24.Dio>()));
    gh.factory<_i27.ProfileDataSource>(
        () => _i28.ProfileDataSourceImpl(client: gh<_i26.HttpClient>()));
    gh.factory<_i29.ProfileRepository>(() => _i30.ProfileRepositoryImpl(
          dataSource: gh<_i27.ProfileDataSource>(),
          converter: gh<_i4.Converter<_i20.ProfileModel, _i21.ProfileEntity>>(),
        ));
    gh.singleton<_i31.SecureStorageService>(
        _i31.SecureStorageService(gh<_i25.FlutterSecureStorage>()));
    await gh.singletonAsync<_i32.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i33.StorageDataSource>(
        () => _i34.StorageDataSourceImpl(gh<_i26.HttpClient>()));
    gh.factory<_i35.StorageRepository>(() => _i36.StorageRepositoryImpl(
          gh<_i33.StorageDataSource>(),
          gh<_i4.Converter<_i14.StorageModel, _i15.StorageEntity>>(),
          gh<_i4.Converter<_i8.WheelModel, _i9.WheelEntity>>(),
        ));
    gh.factory<_i37.WheelDataSource>(
        () => _i38.WheelDataSourceImpl(gh<_i26.HttpClient>()));
    gh.factory<_i39.WheelRepository>(() => _i40.WheelRepositoryImpl(
          gh<_i37.WheelDataSource>(),
          gh<_i4.Converter<_i5.SalesDetailModel, _i6.SalesDetailEntity>>(),
          gh<_i4.Converter<_i11.SalesModel, _i12.SalesEntity>>(),
        ));
    gh.factory<_i41.AcceptanceDataSource>(
        () => _i42.AcceptanceDataSourceImpl(gh<_i26.HttpClient>()));
    gh.factory<_i43.AcceptanceRepository>(() => _i44.AcceptanceRepositoryImpl(
          gh<_i41.AcceptanceDataSource>(),
          gh<_i4.Converter<_i17.AcceptanceModel, _i18.AcceptanceEntity>>(),
        ));
    gh.singleton<_i45.AppRouter>(_i45.AppRouter(gh<_i3.AuthService>()));
    gh.factory<_i46.AuthDataSource>(
        () => _i47.AuthDataSourceImpl(gh<_i26.HttpClient>()));
    gh.factory<_i48.AuthRepository>(() => _i49.AuthRepositoryImpl(
          gh<_i46.AuthDataSource>(),
          gh<_i3.AuthService>(),
        ));
    gh.singleton<_i50.LocalStorageService>(_i50.LocalStorageService(
      gh<_i32.SharedPreferences>(),
      gh<_i3.AuthService>(),
    ));
    gh.factory<_i51.ProfileBloc>(
        () => _i51.ProfileBloc(gh<_i29.ProfileRepository>()));
    gh.factory<_i52.StorageBloc>(
        () => _i52.StorageBloc(gh<_i35.StorageRepository>()));
    gh.factory<_i53.WheelBloc>(
        () => _i53.WheelBloc(gh<_i39.WheelRepository>()));
    gh.factory<_i54.AcceptanceBloc>(
        () => _i54.AcceptanceBloc(gh<_i43.AcceptanceRepository>()));
    gh.factory<_i55.AuthBloc>(() => _i55.AuthBloc(gh<_i48.AuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i56.RegisterModule {}
