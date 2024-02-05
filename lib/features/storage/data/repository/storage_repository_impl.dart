import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/on_repository_exception.dart';
import 'package:wheel_crm/features/storage/data/data_sources/storage_data_source.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/storage/domain/repository/storage_repository.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

@Injectable(as: StorageRepository)
class StorageRepositoryImpl extends StorageRepository {
  final StorageDataSource _dataSource;
  final Converter<StorageModel, StorageEntity> _converter;
  final Converter<WheelModel, WheelEntity> _wheelConverter;

  StorageRepositoryImpl(this._dataSource, this._converter, this._wheelConverter);

  @override
  Future<Either<Failure, List<StorageEntity>>> getStorages() async {
    try {
      final result = await _dataSource.getStorages();

      final storages = result.map((e) => _converter.convert(e)).toList();
      return Right(storages);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, List<WheelEntity>>> getStoragesById({required int storageId}) async {
    try {
      final result = await _dataSource.getStoragesById(storageId: storageId);

      final wheels = result.map((e) => _wheelConverter.convert(e)).toList();
      return Right(wheels);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
