import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';

abstract class StorageRepository {
  Future<Either<Failure, List<StorageEntity>>> getStorages();
}
