import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

abstract class StorageRepository {
  Future<Either<Failure, List<StorageEntity>>> getStorages();
  Future<Either<Failure, List<WheelEntity>>> getStoragesById({required int storageId});
}
